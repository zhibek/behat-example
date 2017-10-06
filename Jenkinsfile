pipeline {
    agent docker:'php:7.1-alpine'

    stages {
        stage('Prepare BDD Tests') {
            steps {
                echo 'Prepare BDD Tests...'
                sh 'composer install'
            }
        }
        stage('Run BDD Tests') {
            steps {
                echo 'Run BDD Tests...'
                sh 'vendor/bin/behat -f pretty -o std -f junit -o build'
                junit 'build/*.xml' 
            }
        }
    }
}
