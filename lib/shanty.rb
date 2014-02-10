require 'shanty/version'
require 'shanty/project_config'
require 'shanty/provider_config'
require 'shanty/initializer'
require 'shanty/builder'
require 'shanty/dependency_checker'
require 'shanty/tester'
require 'shanty/language_factory'
require 'shanty/language'
require 'shanty/languages/ruby'

module Shanty
  class MissingDependency < StandardError; end

  def self.project_config
    if @project_config
      return @project_config
    else
      @project_config = Shanty::ProjectConfig.new
      @project_config.load
      return @project_config
    end
  end

  def self.provider_config
    if @provider_config
      return @provider_config
    else
      @provider_config = Shanty::ProviderConfig.new
      @provider_config.load
      return @provider_config
    end
  end

  def self.project_path
    @project_path ||= File.expand_path(%x(pwd)).strip
  end
end
