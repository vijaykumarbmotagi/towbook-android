.class public abstract Lcom/google/android/libraries/places/internal/dn;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/dn$a;,
        Lcom/google/android/libraries/places/internal/dn$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/libraries/places/internal/dn$a;
    .registers 3

    .line 2
    new-instance v0, Lcom/google/android/libraries/places/internal/et;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/et;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p0, Lcom/google/android/libraries/places/internal/dl;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/dl;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/et;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/dn$a;->a(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/dn$a;

    move-result-object p0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/et;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/dn$a;->a(I)Lcom/google/android/libraries/places/internal/dn$a;

    move-result-object p0

    sget-object v0, Lcom/google/android/libraries/places/internal/dn$b;->a:Lcom/google/android/libraries/places/internal/dn$b;

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/dn$a;->a(Lcom/google/android/libraries/places/internal/dn$b;)Lcom/google/android/libraries/places/internal/dn$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()I
.end method

.method public abstract c()Lcom/google/android/libraries/places/internal/dn$b;
.end method
