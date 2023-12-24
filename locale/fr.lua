local Translations = {
    error = {
        not_online = 'Le joueur n\'est pas connecté',
        wrong_format = 'Format incorrect',
        missing_args = 'Arguments manquants (x, y, z)',
        missing_args2 = 'Tous les arguments doivent être remplis!',
        no_access = 'Vous n\'avez pas accès à cette commande',
        company_too_poor = 'Votre entreprise n\'a pas suffisamment d\'argent',
        item_not_exist = 'L\'objet n\'existe pas',
        too_heavy = 'L\'inventaire est plein',
        location_not_exist = 'Destination inexistante',
        duplicate_license = 'License Rockstar Dupliquée trouvée',
        no_valid_license  = 'Aucune License Rockstar trouvée',
        not_whitelisted = 'Vous n\'êtes pas Whitelisté sur ce serveur',
        server_already_open = 'Le serveur est déjà ouvert',
        server_already_closed = 'Le serveur est déjà fermé',
        no_permission  = 'Vous n\'avez pas les permissions pour cela',
        no_waypoint = 'Pas de marqueur défini.',
        tp_error = 'Erreur lors de la téléportation.',
        connecting_database_timeout = 'La connexion à la base de données a expiré. (Le serveur SQL est-il allumé?)',
        connecting_error = 'Une erreur s\'est produite lors de la connexion au serveur. (Vérifiez la console de votre serveur)',
        no_match_character_registration = 'Les caractères autres que les lettres ne sont pas autorisés, les espaces en fin de ligne ne sont pas autorisés et les mots doivent commencer par une lettre majuscule dans les champs de saisie. Cependant, vous pouvez ajouter des mots avec des espaces entre eux.',
        already_in_queue = 'Vous êtes déjà dans la queue.'
    },
    success = {
        server_opened = 'Le serveur a été ouvert',
        server_closed = 'Le serveur a été fermé',
        teleported_waypoint = 'Téléporté au marqueur',
        character_deleted = 'Personnage supprimé!',
        character_deleted_citizenid = 'Le personnage avec pour ID Citoyen %{citizenid} à été supprimé.'
    },
    info = {
        received_paycheck = 'Vous avez reçu votre salaire de : $%{value}',
        job_info = 'Emplois: %{value} | Grade: %{value2} | Service: %{value3}',
        gang_info = 'Gang: %{value} | Grade: %{value2}',
        on_duty = 'Vous êtes désormais en service!',
        off_duty = 'Vous n\'êtes plus en service!',
        checking_ban = 'Bonjour %s. Nous verifions si vous êtes banni.',
        join_server = 'Bienvenue %s sur {Server Name}.',
        checking_whitelisted = 'Bonjour %s. Nous vérifions si vous êtes Whitelist.',
        exploit_banned = 'Vous avez été ban parceque vous avez triché. Allez sur notre discord pour plus d\'information: %{discord}',
        exploit_dropped = 'Vous avez été kick pour exploitation.',
        multichar_title = 'After-Life',
        multichar_new_character = 'Nouveau personnage #%{number}',
        char_male = 'Homme',
        char_female = 'Femme',
        play = 'Jouer',
        play_description = 'Jouer %{playerName}',
        delete_character = 'Supprimer personnage',
        delete_character_description = 'Supprime %{playerName}',
        logout_command_help = 'Vous ramène à l\'écran de sélection de personnage',
        deletechar_command_help = 'Supprime le personnage d\'un joueur',
        deletechar_command_arg_player_id = 'ID Joueur',
        character_registration_title = 'Création de personnage',
        first_name = 'Prénom',
        last_name = 'Nom',
        nationality = 'Nationalité',
        gender = 'Genre',
        birth_date = 'Date de naissance',
        select_gender = 'Sélectionnez votre genre',
        check_id = 'Vérifier votre ID Serveur',
        confirm_delete = 'Êtes-vous sûr de vouloir supprimer ce personnage?',
        in_queue = '🐌 Vous êtes %{queuePos}/%{queueSize} dans la queue.',
    },
    command = {
        tp = {
            help = 'TP vers un joueur ou des coordonnées (Admin Only)',
            params = {
                x = { name ='id/x', help = 'ID du joueur ou position X',},
                y = { name = 'y', help = 'Position Y'},
                z = { name = 'z', help = 'Position Z'},
            },
        },
        tpm = { help = 'TP au marqueur (Admin Only)'},
        togglepvp = { help = 'Activer/Désactiver le PVP sur le serveur (Admin Only)'},
        addpermission = {
            help = 'Donner des permissions à un joueur (God Only)',
            params = {
                id = { name = 'id', help = 'ID du joueur',},
                permission = { name = 'permission', help = 'Niveau de permission',},
            },
        },
        removepermission = {
            help = 'Retirer les permissions d\'un joueur (God Only)',
            params = {
                id = { name = 'id', help = 'ID du joueur',},
                permission = { name = 'permission', help = 'Niveau de permission',},
            },
        },
        openserver = { help = 'Ouvrir le serveur à tout le monde (Admin Only)'},
        closeserver = {
            help = 'Fermer le serveur au joueurs sans permissions (Admin Only)',
            params = {
                reason = { name = 'reason', help = 'Raison de fermeture du serveur (Optionnel)',},
            },
        },
        car = {
            help = 'Faire apparaître un véhicule (Admin Only)',
            params = {
                model = { name = 'model', help = 'Modèle du véhicule',},
            },
        },
        dv = { help = 'Supprimer un véhicule (Admin Only)'},
        givemoney = {
            help = 'Donner de l\'argent à un joueur (Admin Only)',
            params = {
                id = { name = 'id', help = 'ID du joueur',},
                moneytype = { name = 'moneytype', help = 'Type d\'argent (cash, bank, crypto)',},
                amount = { name = 'amount', help = 'Montant' },
            },
        },
        setmoney = {
            help = 'Définir le solde d\'un joueur (Admin Only)',
            params = {
                id = { name = 'id', help = 'ID du joueur',},
                moneytype = { name = 'moneytype', help = 'Type d\'argent (cash, bank, crypto)',},
                amount = { name = 'amount', help = 'Montant' },
            },
        },
        job = { help = 'Voir son travail'},
        setjob = {
            help = 'Définir le travail d\'un joueur (Admin Only)',
            params = {
                id = { name = 'id', help = 'ID du joueur',},
                job = { name = 'job', help = 'Nom du Travail',},
                grade = { name = 'grade', help = 'Grade'},
            },
        },
        gang = { help = 'Voir son gang'},
        setgang = {
            help = 'Définir le gang d\'un joueur (Admin Only)',
            params = {
                id = { name = 'id', help = 'ID du joueur',},
                gang = { name = 'gang', help = 'Nom du Gang',},
                grade = { name = 'grade', help = 'Grade'},
            },
        },
        ooc = { help = 'Envoyer un message HRP'},
        me = {
            help = 'Envoyer un message local',
            params = {
                message = { name = 'message', help = 'Message'}
            },
        },
    },
}

if GetConvar('qb_locale', 'en') == 'fr' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
