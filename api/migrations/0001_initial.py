# Generated by Django 4.2.6 on 2023-10-15 02:11

from django.db import migrations, models


class Migration(migrations.Migration):
    initial = True

    dependencies = []

    operations = [
        migrations.CreateModel(
            name="Artist",
            fields=[
                (
                    "idartist",
                    models.AutoField(
                        db_column="idArtist", primary_key=True, serialize=False
                    ),
                ),
                (
                    "artist_name",
                    models.CharField(
                        blank=True,
                        db_collation="utf8_general_ci",
                        max_length=40,
                        null=True,
                    ),
                ),
            ],
            options={
                "db_table": "artist",
                "managed": True,
            },
        ),
        migrations.CreateModel(
            name="Artwork",
            fields=[
                (
                    "idartwork",
                    models.AutoField(
                        db_column="idArtwork", primary_key=True, serialize=False
                    ),
                ),
                ("title", models.CharField(blank=True, max_length=50)),
                ("date_created_month", models.IntegerField(blank=True)),
                ("date_created_year", models.TextField(blank=True)),
                ("comments", models.CharField(blank=True, max_length=255, null=True)),
                (
                    "width",
                    models.DecimalField(
                        blank=True, decimal_places=3, max_digits=10),
                ),
                (
                    "height",
                    models.DecimalField(
                        blank=True, decimal_places=3, max_digits=10, null=True
                    ),
                ),
            ],
            options={
                "db_table": "artwork",
                "managed": True,
            },
        ),
        migrations.CreateModel(
            name="AuthGroup",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("name", models.CharField(max_length=150, unique=True)),
            ],
            options={
                "db_table": "auth_group",
                "managed": False,
            },
        ),
        migrations.CreateModel(
            name="AuthGroupPermissions",
            fields=[
                ("id", models.BigAutoField(primary_key=True, serialize=False)),
            ],
            options={
                "db_table": "auth_group_permissions",
                "managed": False,
            },
        ),
        migrations.CreateModel(
            name="AuthPermission",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("name", models.CharField(max_length=255)),
                ("codename", models.CharField(max_length=100)),
            ],
            options={
                "db_table": "auth_permission",
                "managed": False,
            },
        ),
        migrations.CreateModel(
            name="AuthUser",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("password", models.CharField(max_length=128)),
                ("last_login", models.DateTimeField(blank=True, null=True)),
                ("is_superuser", models.IntegerField()),
                ("username", models.CharField(max_length=150, unique=True)),
                ("first_name", models.CharField(max_length=150)),
                ("last_name", models.CharField(max_length=150)),
                ("email", models.CharField(max_length=254)),
                ("is_staff", models.IntegerField()),
                ("is_active", models.IntegerField()),
                ("date_joined", models.DateTimeField()),
            ],
            options={
                "db_table": "auth_user",
                "managed": False,
            },
        ),
        migrations.CreateModel(
            name="AuthUserGroups",
            fields=[
                ("id", models.BigAutoField(primary_key=True, serialize=False)),
            ],
            options={
                "db_table": "auth_user_groups",
                "managed": False,
            },
        ),
        migrations.CreateModel(
            name="AuthUserUserPermissions",
            fields=[
                ("id", models.BigAutoField(primary_key=True, serialize=False)),
            ],
            options={
                "db_table": "auth_user_user_permissions",
                "managed": False,
            },
        ),
        migrations.CreateModel(
            name="Category",
            fields=[
                (
                    "idcategory",
                    models.AutoField(
                        db_column="idCategory", primary_key=True, serialize=False
                    ),
                ),
                ("category", models.CharField(blank=True, max_length=255, null=True)),
            ],
            options={
                "db_table": "category",
                "managed": True,
            },
        ),
        migrations.CreateModel(
            name="DjangoAdminLog",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("action_time", models.DateTimeField()),
                ("object_id", models.TextField(blank=True, null=True)),
                ("object_repr", models.CharField(max_length=200)),
                ("action_flag", models.PositiveSmallIntegerField()),
                ("change_message", models.TextField()),
            ],
            options={
                "db_table": "django_admin_log",
                "managed": False,
            },
        ),
        migrations.CreateModel(
            name="DjangoContentType",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("app_label", models.CharField(max_length=100)),
                ("model", models.CharField(max_length=100)),
            ],
            options={
                "db_table": "django_content_type",
                "managed": False,
            },
        ),
        migrations.CreateModel(
            name="DjangoMigrations",
            fields=[
                ("id", models.BigAutoField(primary_key=True, serialize=False)),
                ("app", models.CharField(max_length=255)),
                ("name", models.CharField(max_length=255)),
                ("applied", models.DateTimeField()),
            ],
            options={
                "db_table": "django_migrations",
                "managed": False,
            },
        ),
        migrations.CreateModel(
            name="DjangoSession",
            fields=[
                (
                    "session_key",
                    models.CharField(
                        max_length=40, primary_key=True, serialize=False),
                ),
                ("session_data", models.TextField()),
                ("expire_date", models.DateTimeField()),
            ],
            options={
                "db_table": "django_session",
                "managed": False,
            },
        ),
        migrations.CreateModel(
            name="Donor",
            fields=[
                (
                    "iddonor",
                    models.AutoField(
                        db_column="idDonor", primary_key=True, serialize=False
                    ),
                ),
                ("donor_name", models.CharField(
                    blank=True, max_length=30, null=True)),
            ],
            options={
                "db_table": "donor",
                "managed": True,
            },
        ),
        migrations.CreateModel(
            name="Images",
            fields=[
                ("idimages", models.IntegerField(
                    primary_key=True, serialize=False)),
                ("image_path", models.CharField(
                    blank=True, max_length=100, null=True)),
            ],
            options={
                "db_table": "images",
                "managed": False,
            },
        ),
        migrations.CreateModel(
            name="Location",
            fields=[
                (
                    "idlocation",
                    models.AutoField(
                        db_column="idLocation", primary_key=True, serialize=False
                    ),
                ),
                (
                    "location",
                    models.CharField(
                        blank=True, db_column="Location", max_length=45, null=True
                    ),
                ),
            ],
            options={
                "db_table": "location",
                "managed": True,
            },
        ),
        migrations.CreateModel(
            name="MoveRequest",
            fields=[
                (
                    "idmove_request",
                    models.IntegerField(primary_key=True, serialize=False),
                ),
                ("to_location", models.CharField(
                    blank=True, max_length=30, null=True)),
            ],
            options={
                "db_table": "move_request",
                "managed": True,
            },
        ),
        migrations.CreateModel(
            name="Privs",
            fields=[
                ("idprivs", models.IntegerField(primary_key=True, serialize=False)),
                ("privs", models.CharField(blank=True, max_length=5, null=True)),
            ],
            options={
                "db_table": "privs",
                "managed": True,
            },
        ),
        migrations.CreateModel(
            name="RequestType",
            fields=[
                (
                    "idrequest_type",
                    models.IntegerField(primary_key=True, serialize=False),
                ),
                (
                    "request_type",
                    models.CharField(blank=True, max_length=20, null=True),
                ),
            ],
            options={
                "db_table": "request_type",
                "managed": True,
            },
        ),
        migrations.CreateModel(
            name="User",
            fields=[
                ("iduser", models.IntegerField(primary_key=True, serialize=False)),
                ("address", models.CharField(blank=True, max_length=50, null=True)),
            ],
            options={
                "db_table": "user",
                "managed": True,
            },
        ),
        migrations.CreateModel(
            name="UserType",
            fields=[
                ("iduser_type", models.IntegerField(
                    primary_key=True, serialize=False)),
                ("user_type", models.CharField(blank=True, max_length=10, null=True)),
            ],
            options={
                "db_table": "user_type",
                "managed": True,
            },
        ),
    ]
