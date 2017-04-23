# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'GithubRepository' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  target 'GithubRepositoryTests' do
    inherit! :search_paths
    # Pods for testing
  end

end

target 'GithubRepositoryFramework' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  
  pod 'Moya'
  pod 'Kingfisher', '~> 3.0'
  pod 'ObjectMapper'
  pod 'RxSwift'
  pod 'Moya-ObjectMapper/RxSwift'

  target 'GithubRepositoryFrameworkTests' do
    inherit! :search_paths
    # Pods for testing
  end

end
