
import java.util.*;

class Node {
	int data;
	LinkedList<Node> linkNode;
	boolean marked;
}
public class DFS {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
	}
	
	void dfs( int index ){
		Node root = new Node();
		Stack<Node> stack = new Stack<Node>();
		stack.push(root);
		root.marked = true;
		
		while(!stack.isEmpty()){
			Node  r = stack.pop();
			for ( Node n : r.linkNode){
				if (n.marked == false) {
					n.marked = true;
					stack.push(n);
				}
			}
			visit(r);
		}
	}

	void visit(Node n){
		System.out.println(n.data);
	}
}
