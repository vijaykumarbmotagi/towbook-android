.class public Lcom/google/android/libraries/places/internal/et;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/lm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/lm;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/et;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/et;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/dh;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/et;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/et;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/places/internal/et;->c:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .registers 4

    const/4 v0, 0x0

    .line 11
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/et;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_e

    return p1

    :catch_e
    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/et;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/et;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    .line 10
    iget v0, p0, Lcom/google/android/libraries/places/internal/et;->c:I

    return v0
.end method
