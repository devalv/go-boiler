package models

type Config struct {
	Debug bool `yaml:"debug" env:"DEBUG"`
}
