.class public Lcom/google/android/libraries/places/internal/fm;
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
.field public a:Landroid/support/v7/app/AppCompatActivity;

.field public b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatActivity;Landroid/os/Bundle;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fm;->a:Landroid/support/v7/app/AppCompatActivity;

    .line 5
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/fm;->b:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/AppCompatActivity;Landroid/os/Bundle;B)V
    .registers 4

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/fm;-><init>(Landroid/support/v7/app/AppCompatActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public static c()Lcom/google/android/libraries/places/internal/fn;
    .registers 2

    .line 7
    new-instance v0, Lcom/google/android/libraries/places/internal/fn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/fn;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/libraries/places/internal/ff;
    .registers 2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fm;->k()Lcom/google/android/libraries/places/internal/ff;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method d()Lcom/google/android/libraries/places/internal/dn;
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fm;->a:Landroid/support/v7/app/AppCompatActivity;

    .line 11
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dn;->a(Landroid/content/Context;)Lcom/google/android/libraries/places/internal/dn$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/dn$b;->b:Lcom/google/android/libraries/places/internal/dn$b;

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/dn$a;->a(Lcom/google/android/libraries/places/internal/dn$b;)Lcom/google/android/libraries/places/internal/dn$a;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/dn$a;->b()Lcom/google/android/libraries/places/internal/dn;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/jh;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/dn;

    return-object v0
.end method

.method e()Lcom/google/android/libraries/places/api/net/PlacesClient;
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fm;->a:Landroid/support/v7/app/AppCompatActivity;

    .line 18
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fm;->d()Lcom/google/android/libraries/places/internal/dn;

    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/api/Places;->a(Landroid/content/Context;Lcom/google/android/libraries/places/internal/dn;)Lcom/google/android/libraries/places/api/net/PlacesClient;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 24
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/jh;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/api/net/PlacesClient;

    return-object v0
.end method

.method f()Lcom/google/android/libraries/places/internal/eu;
    .registers 4

    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fm;->a:Landroid/support/v7/app/AppCompatActivity;

    .line 30
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "place_fields"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 34
    new-instance v2, Lcom/google/android/libraries/places/internal/dy;

    invoke-direct {v2}, Lcom/google/android/libraries/places/internal/dy;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/internal/ev;->a(Ljava/util/List;)Lcom/google/android/libraries/places/internal/ev;

    move-result-object v1

    const-string v2, "location_bias"

    .line 36
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/api/model/LocationBias;

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/ev;->a(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/internal/ev;

    move-result-object v1

    const-string v2, "location_restriction"

    .line 37
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/api/model/LocationRestriction;

    .line 38
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/ev;->a(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/internal/ev;

    move-result-object v1

    const-string v2, "country"

    .line 39
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/ev;->a(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/ev;

    move-result-object v1

    const-string v2, "types"

    .line 40
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/api/model/TypeFilter;

    .line 41
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/ev;->a(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/internal/ev;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ev;->a()Lcom/google/android/libraries/places/internal/eu;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 44
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/jh;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/eu;

    return-object v0
.end method

.method g()Lcom/google/android/libraries/places/internal/el;
    .registers 5

    .line 46
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fm;->a:Landroid/support/v7/app/AppCompatActivity;

    .line 47
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fm;->e()Lcom/google/android/libraries/places/api/net/PlacesClient;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fm;->f()Lcom/google/android/libraries/places/internal/eu;

    move-result-object v2

    .line 49
    new-instance v3, Lcom/google/android/libraries/places/internal/el;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/libraries/places/internal/el;-><init>(Landroid/content/Context;Lcom/google/android/libraries/places/api/net/PlacesClient;Lcom/google/android/libraries/places/internal/eu;)V

    return-object v3
.end method

.method h()Lcom/google/android/libraries/places/internal/ew;
    .registers 3

    .line 52
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fm;->g()Lcom/google/android/libraries/places/internal/el;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/google/android/libraries/places/internal/ew;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/places/internal/ew;-><init>(Lcom/google/android/libraries/places/internal/el;)V

    return-object v1
.end method

.method i()Lcom/google/android/gms/clearcut/ClearcutLogger;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fm;->a:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dj;->a(Landroid/content/Context;)Lcom/google/android/gms/clearcut/ClearcutLogger;

    move-result-object v0

    return-object v0
.end method

.method j()Lcom/google/android/libraries/places/internal/fr;
    .registers 4

    .line 58
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fm;->i()Lcom/google/android/gms/clearcut/ClearcutLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fm;->d()Lcom/google/android/libraries/places/internal/dn;

    move-result-object v1

    .line 60
    new-instance v2, Lcom/google/android/libraries/places/internal/fr;

    invoke-direct {v2, v0, v1}, Lcom/google/android/libraries/places/internal/fr;-><init>(Lcom/google/android/gms/clearcut/ClearcutLogger;Lcom/google/android/libraries/places/internal/dn;)V

    return-object v2
.end method

.method k()Lcom/google/android/libraries/places/internal/ff;
    .registers 8

    .line 62
    new-instance v6, Lcom/google/android/libraries/places/internal/ff;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fm;->a:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/fm;->b:Landroid/os/Bundle;

    .line 63
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fm;->h()Lcom/google/android/libraries/places/internal/ew;

    move-result-object v3

    .line 64
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fm;->j()Lcom/google/android/libraries/places/internal/fr;

    move-result-object v4

    .line 65
    invoke-static {}, Lcom/google/android/libraries/places/internal/b;->a()Lcom/google/android/libraries/places/internal/a;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/ff;-><init>(Landroid/support/v7/app/AppCompatActivity;Landroid/os/Bundle;Lcom/google/android/libraries/places/internal/ew;Lcom/google/android/libraries/places/internal/fr;Lcom/google/android/libraries/places/internal/a;)V

    return-object v6
.end method
