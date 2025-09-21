//
//  HomeView.swift
//  Reminder
//
//  Created by Wagner Sobreira on 9/20/25.
//
import UIKit

class HomeView:UIView {
    
    let profileBackgound:UIView = {
        let view = UIView()
        view.backgroundColor = Colors.gray600
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let contentBackground: UIView = {
        let view = UIView()
        view.layer.cornerRadius = Metrics.small
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]

        view.layer.masksToBounds = true
        view.backgroundColor = Colors.gray800
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    
    let profileImage:UIImageView = {
        let imageView = UIImageView()
        //layerMinXMinYCorner = 1U << 0,
        //layerMaxXMinYCorner = 1U << 1, 2 posciao
        //layerMinXMaxYCorner = 1U << 2, 1 posicao
        //layerMaxXMaxYCorner = 1U << 3,
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius =  Metrics.medium


        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let welcomeLabel:UILabel = {
        let label = UILabel()
        label.text = "home.welcome.label".localized
        label.font = Typography.input
        label.textColor = Colors.gray200
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    let nameLabel:UILabel = {
        let label = UILabel()
        label.font = Typography.heading
        label.textColor = Colors.gray100
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let feedbackButton:UIButton = {
        let button = UIButton()
        button.setTitle("home.feedback.button.title".localized , for: .normal)
        button.titleLabel?.font = Typography.subHeading
        button.layer.cornerRadius =  Metrics.medium
 
        
        button.setTitleColor(Colors.gray800, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = Colors.gray100

        return button
    }()
    
    override init(frame:CGRect){
        super.init(frame: frame)
        setupView()

        self.backgroundColor = Colors.gray600
    }
 
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupView() {

        addSubview(profileBackgound)
        profileBackgound.addSubview(profileImage)
        profileBackgound.addSubview(welcomeLabel)
        profileBackgound.addSubview(nameLabel)
        
        addSubview(contentBackground)
        contentBackground.addSubview(feedbackButton)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            profileBackgound.topAnchor.constraint(equalTo:topAnchor),
            profileBackgound.leadingAnchor.constraint(equalTo: leadingAnchor),
            profileBackgound.trailingAnchor.constraint(equalTo: trailingAnchor),
            profileBackgound.heightAnchor.constraint(equalToConstant: Metrics.backgroundProfileImageSize),
            
            profileImage.topAnchor.constraint(equalTo: profileBackgound.topAnchor,constant: Metrics.huge),
            profileImage.leadingAnchor.constraint(equalTo: profileBackgound.leadingAnchor,constant: Metrics.medium),
            profileImage.heightAnchor.constraint(equalToConstant: Metrics.profileImageSize),
            profileImage.widthAnchor.constraint(equalToConstant: Metrics.profileImageSize),
            
            welcomeLabel.topAnchor.constraint(equalTo: profileImage.bottomAnchor,constant: Metrics.small),
            welcomeLabel.leadingAnchor.constraint(equalTo: profileImage.leadingAnchor),
            
            nameLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor,constant: Metrics.little),
            nameLabel.leadingAnchor.constraint(equalTo: welcomeLabel.leadingAnchor),
            
            contentBackground.topAnchor.constraint(equalTo: profileBackgound.bottomAnchor),
            contentBackground.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentBackground.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentBackground.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            feedbackButton.heightAnchor.constraint(equalToConstant: Metrics.buttonSize),
            feedbackButton.bottomAnchor.constraint(equalTo: contentBackground.bottomAnchor,constant: -Metrics.medium),
            feedbackButton.leadingAnchor.constraint(equalTo: contentBackground.leadingAnchor,constant: Metrics.medium),
            feedbackButton.trailingAnchor.constraint(equalTo: contentBackground.trailingAnchor,constant: -Metrics.medium),
            
        ])

    }
    
    
}
