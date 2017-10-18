class PurchaseMailer < ApplicationMailer
		def confirm_purchase(item, amount)
			@item = item
			@amount = amount

			mail(to: ENV.fetch('MY_EMAIL'), subject: "Your purchase of #{@item}.")
		end
end
