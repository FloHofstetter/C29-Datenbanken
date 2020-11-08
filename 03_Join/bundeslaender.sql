drop table if exists nachbar;
drop table if exists landeshauptstadt;
drop table if exists bundesland;
drop table if exists symmetricNachbar;
create table bundesland (
        kuerzel        varchar(2) primary key,
        name           varchar(50),
        flaeche        int,
        einwohnerInTsd int
);
create table landeshauptstadt (
        name                  varchar(50),
        einwohnerInTsd        int,
        fk_bundesland_kuerzel varchar(2),
        foreign key (fk_bundesland_kuerzel) references bundesland(kuerzel)
        ON UPDATE CASCADE ON DELETE CASCADE
);
create table nachbar (
        fk_bl1 varchar(2),
        fk_bl2 varchar(2),
        foreign key (fk_bl1) references bundesland(kuerzel)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
        foreign key (fk_bl2) references bundesland(kuerzel)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
insert into bundesland
    (kuerzel, name,                     flaeche, einwohnerInTsd) values
    ('BE',    'Berlin',                 892,     3502),
    ('BB',    'Brandenburg',            29484,   2496),
    ('MV',    'Mecklenburg-Vorpommern', 23194,   1635),
    ('BW',    'Baden-Württemberg',      35751,   10786),
    ('BY',    'Bayern',                 70550,   12596),
    ('HB',    'Bremen',                 419,     661),
    ('HH',    'Hamburg',                755,     1799),
    ('HE',    'Hessen',                 21115,   6092),
    ('NI',    'Niedersachsen',          47614,   7914),
    ('NW',    'Nordrhein-Westfalen',    34098,   17842),
    ('RP',    'Rheinland-Pfalz',        19854,   3999),
    ('SL',    'Saarland',               2569,    1013),
    ('SN',    'Sachsen',                18420,   4137),
    ('ST',    'Sachsen-Anhalt',         20450,   2313),
    ('SH',    'Schleswig-Holstein',     15800,   2838),
    ('TH',    'Thüringen',              16173,   2221);
insert into landeshauptstadt
    (name,          einwohnerInTsd, fk_bundesland_kuerzel) VALUES
    ('Berlin',      3502,           'BE'),
    ('Hamburg',     1799,           'HH'),
    ('München',     1378,           'BY'),
    ('Stuttgart',   613,            'BW'),
    ('Düsseldorf',  592,            'NW'),
    ('Bremen',      548,            'HB'),
    ('Dresden',     530,            'SN'),
    ('Hannover',    526,            'NI'),
    ('Wiesbaden',   279,            'HE'),
    ('Kiel',        242,            'SH'),
    ('Magdeburg',   232,            'ST'),
    ('Erfurt',      206,            'TH'),
    ('Mainz',       201,            'RP'),
    ('Saarbrücken', 176,            'SL'),
    ('Potsdam',     159,            'BB'),
    ('Schwerin',    92,             'MV');
insert into nachbar values
    ('NI', 'HB'), ('NI', 'NW'), ('NI', 'HE'), ('NI', 'TH'), ('NI', 'ST'), ('NI', 'BB'),
    ('BB', 'BE'), ('BB', 'ST'), ('BB', 'SN'), ('ST', 'TH'), ('ST', 'SN'),
    ('BY', 'SN'), ('BY', 'TH'), ('BY', 'HE'), ('BY', 'BW'),
    ('HE', 'TH'), ('HE', 'BW'), ('HE', 'RP'), ('HE', 'NW'),
    ('SH', 'MV'), ('SH', 'HH'), ('SH', 'NI'),
    ('MV', 'NI'), ('MV', 'BB'),
    ('RP', 'NW'), ('RP', 'SL'),
    ('SN', 'TH');

