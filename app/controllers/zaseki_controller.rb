class ZasekiController < ApplicationController
  def index
    @name = Num.new
    @num = Num.order("num ASC")
    @num.each do |num|
      case num.num
      when 1
          @zaseki1 = num.name
      when 2
          @zaseki2 = num.name
      when 3
          @zaseki3 = num.name
      when 4
          @zaseki4 = num.name
      when 5
          @zaseki5 = num.name
      when 6
          @zaseki6 = num.name
      when 7
          @zaseki7 = num.name
      when 8
          @zaseki8 = num.name
      when 9
          @zaseki9 = num.name
      when 10
          @zaseki10 = num.name
      when 11
          @zaseki11 = num.name
      when 12
          @zaseki12 = num.name
      when 13
          @zaseki13 = num.name
      end
    end
  end

  def new
    flg = 0
    num2 = Num.all
    if num2.count > 12
      flg = 1
      flash[:notice] = "限界だお"
    end
    while flg == 0
      num1 = rand(13)+1
      flg = 1
      num2.each do |num|
        if num.num == num1
          flg = 0
        end
      end
    end

    Num.new(num:num1,name:params[:name]).save
    redirect_to("/")
  end

  def delete
    Num.delete_all
    redirect_to("/")
  end

  def shuffle
    zasekis = Num.all
    array = []
    update_zaseki = []
    count = 0
    while array.length < 13 do
      flg = 0
      while flg == 0 do
        num = rand(13)+1
        flg = 1
        array.each do |temp|
          if temp == num
            flg = 0
          end
        end
      end
      array.push(num)
    end
    zasekis.each do |zaseki|
      zaseki.num = array[count]
      zaseki.save
      count += 1
    end
    # update_zaseki = zaseki.map do |zaseki|
    #   zaseki.num = array[count]
    #   count++
    # end
    # zaseki.zip(array).each do |zaseki,array|
    #   zaseki.num = array
    #   update_zaseki << zaseki
    # end

    # Num.import update_zaseki, on_duplicate_key_update: [:num]
    redirect_to("/")
  end
end