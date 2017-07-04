class Node
	attr_accessor :value, :next_node

	def initialize(value = nil)
		@value = value
	end
end

class LinkedList
	attr_accessor :list

	def initialize(value)
		@list = Node.new(value)
	end

	def append(value)
		node = Node.new(value)
		current = list
		until current.next_node.nil?
			current = current.next_node
		end
		current.next_node = node
	end

	def prepend(value)
		node = Node.new(value)
		node.next_node = list
		@list = node
	end

	def size
		c = 1
		current = list
		loop do
			if current.next_node.nil?
				return c
			else
				current = current.next_node
				c += 1
			end
		end
	end

	def head
		list.value
	end

	def tail
		current = list
		until current.next_node.nil?
			current = current.next_node
		end
		current.value
	end

	def at(index)
		c = 0
		current = list
		while c < size
			if c == index
				return current.value
			else
				current = current.next_node
				c += 1
			end
		end
	end

	def pop
		current = list
		c = 1
		until c == size - 1
			current = current.next_node
			c += 1
		end
		current.next_node = nil
	end

	def contains?(n)
		current = list
		c = 0
		while c < size
			if current.value == n
				return true
			else
				current = current.next_node
				c += 1
			end
		end
		return false
	end

	def find(data)
		i = 0
		current = list
		until i == size
			if current.value == data
				return i
			else
				current = current.next_node
				i += 1
			end
		end
		nil
	end

	def to_s
		c = 1
		current = list
		strg = "(#{current.value})"
		until c == size 
			current = current.next_node
			strg += " -> (#{current.value})"
			c += 1
		end
		strg
	end

	


end


