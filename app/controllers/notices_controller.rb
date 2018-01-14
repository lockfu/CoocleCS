class NoticeController < ApplicationController
	before_action :set_college, only: [:show, :edit, :update, :destroy, :showNoticeInfo]
	def index
		@notice = Notice.all
	end


end
