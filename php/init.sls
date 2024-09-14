php_sury_repository:
  pkgrepo.managed:
    - humanname: PHP
    - name: deb [signed-by=/usr/share/keyrings/deb.sury.org-php.gpg] https://packages.sury.org/php/ bullseye main
    - file: /etc/apt/sources.list.d/sury.list
    - gpgcheck: 1
    - key_url: https://packages.sury.org/php/apt.gpg

php_packages:
  pkg.installed:
    - pkgs: "{{ pillar.get('php_packages', default=['htop']) }}"
    - require:
      - pkgrepo: php_sury_repository
