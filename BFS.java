import java.util.*;

import javax.xml.soap.Node;

public class BFS {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	
	void bfs(int index) {
		Node root = new Node();
		Queue<Node> queue = new Queue<Node>();
		queue.enqueue(root);
		root.marked = true;
		
		while (!queue.isEmpty()) {
			Node r = queue.dequeue();
			
			for(Node n : r.linkNode) {
				if(n.marked == false) {
					n.marked = true;
					queue.enqueue(n);
				}
			}
			visit(r);
		}
	}
	
	void visit(Node n){
		System.out.println(n.data);
	}
}
