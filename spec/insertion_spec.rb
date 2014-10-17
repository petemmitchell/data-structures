require 'minitest/autorun'
require 'minitest/benchmark'
require 'insertion_sort'
require 'benchmark'

describe 'Custom insertion sorting method' do
  it 'should take an unsorted array and return the array sorted' do
    @test_array = [17, 2, 31, 7, 88, 6]
    Sort.insertion(@test_array).must_equal ([2, 6, 7, 17, 31, 88])

  end

  it 'should have benchmarks' do
    @best_case = (1..5_000).to_a
    @worst_case = @best_case.reverse
    @random_case = (1..5_000).to_a.shuffle

    puts 'Best Case (already sorted)'
    puts Benchmark.measure { Sort.insertion(@best_case) }
    puts 'Worst Case (reverse sorted)'
    puts Benchmark.measure { Sort.insertion(@worst_case) }
    puts 'Random'
    puts Benchmark.measure { Sort.insertion(@random_case) }
  end
end
