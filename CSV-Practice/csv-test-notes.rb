
require 'csv'                                               # 

def write_csv(file_path, data)                              # 
  headers = data.first.keys                                 # 
  CSV.open(                                                 # 
    file_path,                                              # 
    'w',                                                    # 
    write_headers: true,                                    # 
    headers: headers                                        # 
  ) do |csv|                                                # 
    data.each do |row|                                      # 
      csv << row.values                                     # 
    end
  end
end

file_path = 'data.csv'                                      # 
data = [                                                    # 
  { name: 'John Doe', age: 30, city: 'New York' },
  { name: 'Jane Smith', age: 25, city: 'San Francisco' },
  { name: 'Bob Johnson', age: 35, city: 'Chicago' }
]
write_csv(file_path, data)                                  # 
