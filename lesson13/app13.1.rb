def show_book book
	puts "==================================<br/>"
	book.keys.each do |key|
		age = book[key]
		puts "<i>Name:</i> <b>#{key}</b>, <i>age:</i> <b>#{age}</b><br/>"
	end
	puts "==================================<br/>"
end

book1 = {'Mike' => 65, 'Gus' => 50, 'Linda' => 42, 'Yarosla' => 8}
book2 = {'Walt' => 50, 'Jessie' => 25, 'Oleg' => 32}

book1.merge! book2

puts '<body>'

show_book book1

puts '<img style="width:100%; height:100%" src="https://www.motorcyclistonline.com/g00/3_c-4ddd.tvavyjfjspzavuspul.jvt_/c-4TVYLWOLBZ88x24oaawzx3ax2fx2fddd.tvavyjfjspzavuspul.jvtx2fzpalzx2ftvavyjfjspzavuspul.jvtx2fmpslzx2fzafslzx2f9777_8e_x2fwbispjx2fpthnlzx2f9785x2f74x2fohyslf-khcpkzvu-jbzavt-8927-8.qwnx3fpavrx3dRV_ZLPx78Kx26mjx3d27x2c27x26p87j.thyrx3dpthnl_$/$/$/$/$/$/$/$/$/$/$">'