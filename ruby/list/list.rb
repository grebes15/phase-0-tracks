class TodoList
  def initialize(array)
    $array = array
  end
  def get_items
    $array
  end
  def add_item(item)
    $array.push(item)
  end
  def delete_item(item)
    $array.delete_if {|i| i[item]==item}
  end
  def get_item(index)
    $array[index]
  end
end