.class public Landroid/arch/persistence/room/DatabaseConfiguration;
.super Ljava/lang/Object;
.source "DatabaseConfiguration.java"


# instance fields
.field public final allowMainThreadQueries:Z

.field public final callbacks:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/arch/persistence/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public final context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final journalMode:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

.field private final mMigrationNotRequiredFrom:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final migrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final requireMigration:Z

.field public final sqliteOpenHelperFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroid/arch/persistence/room/RoomDatabase$JournalMode;ZLjava/util/Set;)V
    .registers 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;",
            "Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;",
            "Ljava/util/List<",
            "Landroid/arch/persistence/room/RoomDatabase$Callback;",
            ">;Z",
            "Landroid/arch/persistence/room/RoomDatabase$JournalMode;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p3, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    .line 105
    iput-object p1, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->context:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->migrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    .line 108
    iput-object p5, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    .line 109
    iput-boolean p6, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    .line 110
    iput-object p7, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->journalMode:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    .line 111
    iput-boolean p8, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->requireMigration:Z

    .line 112
    iput-object p9, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->mMigrationNotRequiredFrom:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public isMigrationRequiredFrom(I)Z
    .registers 3

    .line 124
    iget-boolean v0, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->requireMigration:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->mMigrationNotRequiredFrom:Ljava/util/Set;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->mMigrationNotRequiredFrom:Ljava/util/Set;

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    :cond_14
    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method
