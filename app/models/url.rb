class Url < ApplicationRecord
  validates :url, presence: true
  validates :url, format: { with: /\Ahttp/, message: "Invalid protocol, include 'http'" }
end
