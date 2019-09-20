.class public Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration;
.super Landroid/arch/persistence/room/migration/Migration;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkDatabaseMigrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkMigration"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    invoke-direct {p0, p2, p3}, Landroid/arch/persistence/room/migration/Migration;-><init>(II)V

    .line 98
    iput-object p1, p0, Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public migrate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .registers 3
    .param p1    # Landroid/arch/persistence/db/SupportSQLiteDatabase;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 103
    new-instance p1, Landroidx/work/impl/utils/Preferences;

    iget-object v0, p0, Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/work/impl/utils/Preferences;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p1, v0}, Landroidx/work/impl/utils/Preferences;->setNeedsReschedule(Z)V

    return-void
.end method
