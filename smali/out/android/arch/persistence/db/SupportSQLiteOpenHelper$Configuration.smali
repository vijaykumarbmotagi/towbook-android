.class public Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;
    }
.end annotation


# instance fields
.field public final callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->context:Landroid/content/Context;

    .line 320
    iput-object p2, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->name:Ljava/lang/String;

    .line 321
    iput-object p3, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    return-void
.end method

.method public static builder(Landroid/content/Context;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .registers 2

    .line 330
    new-instance v0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    invoke-direct {v0, p0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
