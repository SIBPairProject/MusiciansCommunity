class InstrumentsController < ApplicationController
	def index
		@instruments = Instrument.all
	end

	def show
		@instrument = Instrument.find[param[:id]]
	end

	def new
		@instrument = Instrument.new
	end

	def create
		@instrument = Instrument.new[param[:instrument]]
		if @instrument.save
			redirect_to @instrument, notice: 'Instrument was successfully created.'
		else
			render action: "new"
	end

	def edit
		@instrument = Instrument.find[param[:id]]
	end

	def update
		@instrument = Instrument.new[param[:id]]
		if @instrument.save
			redirect_to @instrument, notice: 'Instrument was successfully updated.'
		else
			render action: "edit"
	end

	def destroy
		@instrument = Instrument.find[param[:id]]
		@instrument.destroy
	end
end
