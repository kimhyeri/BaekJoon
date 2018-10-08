
class MyLinkedList {

   private Node head = null;

   private class Node {
      int data;
      Node link;

      Node(int data) {
         this.data = data;
      }
   }

   public void addFirst(int data) {
      Node n = new Node(data);
      n.link = head;
      head = n;

   }

   public void addLast(int data) {
      Node n = new Node(data);
      if (head == null) {
         head = n;
      } else {

         while (head.link != null) {
            head = head.link;
         }
         head.link = n;
      }

   }

   public int removeFirst() {
      int redata = head.data;
      head = head.link;
      return redata;

   }

   public int removeLast() {
      Node pre, temp=null;
      int redata = 0;
      if (head.link == null) {
    	  redata = head.data;
         head = null;   
      } else {
         pre = head;
         temp = head.link;
         while (temp.link != null) {
            pre = temp;
            redata = temp.link.data;
            temp = temp.link;
         }
         pre.link = null;
      }
      return redata;
   }

   @Override
   public String toString() {
      String list = "";

      if (head == null) {
         return "";
      } else {
         while (head.link != null) {
            list += head.data + " ";
            head = head.link;

         }
         list += head.data;
         return list;
      }
   }
}