
=begin
public static void combSort(int[] data) {
    int h = data.length * 10 / 13;

    while (true) {
        int swaps = 0;
        for (int i = 0; i + h < data.length; ++i) {
            if (data[i] > data[i + h]) {
                swap(data, i, i + h);
                ++swaps;
            }
        }
        if (h == 1) {
            if (swaps == 0) {
                break;
            }
        } else {
            h = h * 10 / 13;
        }
    }
}
=end

def combSort(data)
  h = (data.length*10/13).to_i
  while true do
    swaps = 0
    (0...data.length - h).to_a.map do |i|
      if data[i] > data[i + h]
        data[i], data[i + h] = data[i + h], data[i]
        swaps+=1
      end
    end
    if h==1
      break if swaps==0
    else
      h = (h*10/13).to_i
    end
  end
  data
end

x = combSort("6371289450".each_char.to_a.map{|x|x.to_i})
p x
