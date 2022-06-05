<?php

namespace App\Models;

class Cart
{
    public $items = null;
    public $totalQty = 0;
    public $totalPrice = 0;

    public function __construct($oldCart)
    {
        if ($oldCart) {
            $this->items = $oldCart->items;
            $this->totalQty = $oldCart->totalQty;
            $this->totalPrice = $oldCart->totalPrice;
        }
    }

    public function add($item, $id)
    {
        $storedItem = ['qty' => 0, 'price' => (strtotime(date('Y-m-d')) < strtotime($item->thoigianbatdau) || strtotime(date('Y-m-d')) > strtotime($item->thoigianketthuc)) ? $item->giatien : $item->giakhuyenmai, 'item' => $item];
        if ($this->items) {
            if (array_key_exists($id, $this->items)) {
                $storedItem = $this->items[$id];
            }
        }
        $storedItem['qty']++;
        $storedItem['price'] = (strtotime(date('Y-m-d')) < strtotime($item->thoigianbatdau) || strtotime(date('Y-m-d')) > strtotime($item->thoigianketthuc)) ? $item->giatien * $storedItem['qty'] : $item->giakhuyenmai * $storedItem['qty'];
        $this->items[$id] = $storedItem;
        $this->totalQty++;
        $this->totalPrice += (strtotime(date('Y-m-d')) < strtotime($item->thoigianbatdau) || strtotime(date('Y-m-d')) > strtotime($item->thoigianketthuc)) ? $item->giatien : $item->giakhuyenmai;
    }

    public function deleteItem($id)
    {
        $this->totalQty -= $this->items[$id]['qty'];
        $this->totalPrice -= $this->items[$id]['price'];
        unset($this->items[$id]);
    }

    public function decreaseItemByOne($id)
    {
        $this->items[$id]['qty']--;
        $this->items[$id]['price'] -= $this->items[$id]['item']['price'];
        $this->totalQty--;
        $this->totalPrice -= $this->items[$id]['item']['price'];
        if ($this->items[$id]['qty'] <= 0) {
            unset($this->items[$id]);
        }
    }

    public function increaseItemByOne($id)
    {
        $this->items[$id]['qty']++;
        $this->items[$id]['price'] += $this->items[$id]['item']['price'];
        $this->totalQty++;
        $this->totalPrice += $this->items[$id]['item']['price'];
    }

    public function updateItemByOne($id, $soluong)
    {
        $oldQuantity = $this->items[$id]['qty'];
        if ($soluong == 0) {
            $this->totalQty -= $this->items[$id]['qty'];
            $this->totalPrice -= $this->items[$id]['price'];
            $i = 0;
            $this->items[$id]['qty'] = 0;
            return [
                'this' => $this,
                'quantity' => 0,
                'oldQuantity' => $oldQuantity,
                'price' => $this->items[$id]['item']['giatien'],
                'quantityTotal' => $this->totalQty,
            ];
        } else {
            $this->items[$id]['qty'] = $soluong;
            $this->items[$id]['price'] = $this->items[$id]['price'] + $this->items[$id]['item']['giatien'] * ($soluong - $oldQuantity);
            $this->totalQty = $this->totalQty + $soluong - $oldQuantity;
            $this->totalPrice = $this->totalPrice + $this->items[$id]['item']['giatien'] * ($soluong - $oldQuantity);
            return [
                'this' => $this,
                'quantity' => $soluong,
                'oldQuantity' => $oldQuantity,
                'price' => $this->items[$id]['item']['giatien'],
                'quantityTotal' => $this->totalQty,
            ];
        }
    }
}
