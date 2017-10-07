pipeline {

    agent {
        docker 'php:7.1-alpine'
    }

    triggers {
        cron('H H(0-5) * * *')
    }

    stages {
        stage('Prepare BDD Tests') {
            steps {
                echo 'Prepare BDD Tests...'
                sh 'curl -sS https://getcomposer.org/installer | php'
                sh 'php composer.phar install'
            }
        }
        stage('Run BDD Tests') {
            steps {
                echo 'Run BDD Tests...'
                sh 'vendor/bin/behat -f pretty -o std -f junit -o build'
            }
        }
    }

    post {
        always {
            archive 'build/*.xml'
            junit 'build/*.xml' 
        }
    }

}
