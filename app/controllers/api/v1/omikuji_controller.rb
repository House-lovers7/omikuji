module Api
  module V1
    class OmikujiController < ApplicationController

      def index
      require 'spreadsheet'
      Spreadsheet.client_encoding = 'UTF-8'
      dir = '/Users/tg/Desktop'
      file = 'omikuji.xls'
      book = Spreadsheet.open File.join(dir, file)
      ws = book.worksheets[0]

        omikuji_params =  (1..50).map do |row_index|
          {
                number: ws.row(row_index)[0],
                waka: ws.row(row_index)[1],
                discription: ws.row(row_index)[2],
                fortune: ws.row(row_index)[3],
                wish: ws.row(row_index)[4],
                person_wanted: ws.row(row_index)[5],
                lost_property: ws.row(row_index)[6],
                travel: ws.row(row_index)[7],
                business: ws.row(row_index)[8],
                study: ws.row(row_index)[9],
                market: ws.row(row_index)[10],
                struggle: ws.row(row_index)[11],
                love: ws.row(row_index)[12],
                moving_house: ws.row(row_index)[13],
                childbirth: ws.row(row_index)[14],
                illness: ws.row(row_index)[15],
                marriage_proposal: ws.row(row_index)[16]
      }
    end

        render json:
          omikuji_params,  status: :ok

  end
end
end
end
