/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.retailer.online;

import java.util.ArrayList;

/**
 *
 * @author Abdulla
 */
public class ListofItem {

    public ArrayList<Item> items;

    public ListofItem() {
        this.items = new ArrayList<Item>();
    }

    public ArrayList<Item> getItems() {
        return items;
    }
    /*
    public void setItems(ArrayList<Item> items) {
    this.items = items;
    }
     */

    public void setItems(Item item) {
        this.items.add(item);
    }
}
