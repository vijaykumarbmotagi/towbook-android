.class public Lcom/google/android/libraries/places/internal/fk;
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
.field public a:Lcom/google/android/libraries/places/internal/au;

.field public b:Landroid/content/Context;

.field public c:Lcom/google/android/libraries/places/internal/dn;

.field public d:Lcom/google/android/libraries/places/internal/lm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/lm<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/google/android/libraries/places/internal/lm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/lm<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/places/internal/au;Lcom/google/android/libraries/places/internal/dn;)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/fk;->a:Lcom/google/android/libraries/places/internal/au;

    .line 8
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fk;->b:Landroid/content/Context;

    .line 9
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/fk;->c:Lcom/google/android/libraries/places/internal/dn;

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fk;->b(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/places/internal/au;Lcom/google/android/libraries/places/internal/dn;B)V
    .registers 5

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/fk;-><init>(Landroid/content/Context;Lcom/google/android/libraries/places/internal/au;Lcom/google/android/libraries/places/internal/dn;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .registers 2

    .line 2
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/fj;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/jh;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestManager;

    return-object p0
.end method

.method public static c()Lcom/google/android/libraries/places/internal/fo;
    .registers 2

    .line 12
    new-instance v0, Lcom/google/android/libraries/places/internal/fo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/fo;-><init>(B)V

    return-object v0
.end method

.method public static k()Lcom/google/android/libraries/places/internal/fi;
    .registers 2

    .line 28
    new-instance v0, Lcom/google/android/libraries/places/internal/fi;

    new-instance v1, Lcom/google/android/libraries/places/internal/fg;

    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/fg;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/fi;-><init>(Lcom/google/android/libraries/places/internal/fg;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/libraries/places/api/net/PlacesClient;
    .registers 2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fk;->q()Lcom/google/android/libraries/places/internal/u;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 4
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public b(Landroid/content/Context;)V
    .registers 4

    .line 48
    new-instance v0, Lcom/google/android/libraries/places/internal/lk;

    const-string v1, "instance cannot be null"

    invoke-static {p1, v1}, Lcom/google/android/libraries/places/internal/jh;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/lk;-><init>(Ljava/lang/Object;)V

    .line 49
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/fk;->d:Lcom/google/android/libraries/places/internal/lm;

    .line 50
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fk;->d:Lcom/google/android/libraries/places/internal/lm;

    .line 52
    new-instance v0, Lcom/google/android/libraries/places/internal/at;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/at;-><init>(Lcom/google/android/libraries/places/internal/lm;)V

    .line 53
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/lj;->a(Lcom/google/android/libraries/places/internal/lm;)Lcom/google/android/libraries/places/internal/lm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fk;->e:Lcom/google/android/libraries/places/internal/lm;

    return-void
.end method

.method public d()Lcom/google/android/libraries/places/internal/et;
    .registers 3

    .line 13
    new-instance v0, Lcom/google/android/libraries/places/internal/et;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fk;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/et;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e()Lcom/android/volley/RequestQueue;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fk;->e:Lcom/google/android/libraries/places/internal/lm;

    .line 15
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/lm;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 16
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/fo;->a(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/android/libraries/places/internal/ft;
    .registers 3

    .line 17
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fk;->e()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/di;

    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/di;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/dh;->a(Lcom/android/volley/RequestQueue;Lcom/google/android/libraries/places/internal/di;)Lcom/google/android/libraries/places/internal/ft;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/bumptech/glide/RequestManager;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fk;->e:Lcom/google/android/libraries/places/internal/lm;

    .line 19
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/lm;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 20
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/fk;->a(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/android/libraries/places/internal/dh;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fk;->g()Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/di;->a(Lcom/bumptech/glide/RequestManager;)Lcom/google/android/libraries/places/internal/dh;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/google/android/libraries/places/internal/fj;
    .registers 5

    .line 22
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fk;->a:Lcom/google/android/libraries/places/internal/au;

    .line 23
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fk;->d()Lcom/google/android/libraries/places/internal/et;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fk;->f()Lcom/google/android/libraries/places/internal/ft;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fk;->h()Lcom/google/android/libraries/places/internal/dh;

    move-result-object v3

    .line 24
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/fg;->a(Lcom/google/android/libraries/places/internal/av;Lcom/google/android/libraries/places/internal/et;Lcom/google/android/libraries/places/internal/ft;Lcom/google/android/libraries/places/internal/dh;)Lcom/google/android/libraries/places/internal/fj;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/android/gms/location/FusedLocationProviderClient;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fk;->e:Lcom/google/android/libraries/places/internal/lm;

    .line 26
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/lm;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/fi;->a(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/google/android/libraries/places/internal/d;
    .registers 3

    .line 30
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fk;->j()Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/fk;->k()Lcom/google/android/libraries/places/internal/fi;

    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/fh;->a(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/libraries/places/internal/fi;)Lcom/google/android/libraries/places/internal/d;

    move-result-object v0

    return-object v0
.end method

.method public m()Landroid/net/wifi/WifiManager;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fk;->e:Lcom/google/android/libraries/places/internal/lm;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/lm;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/fh;->b(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/google/android/libraries/places/internal/j;
    .registers 3

    .line 34
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fk;->m()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/b;->a()Lcom/google/android/libraries/places/internal/a;

    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/fj;->a(Landroid/net/wifi/WifiManager;Lcom/google/android/libraries/places/internal/a;)Lcom/google/android/libraries/places/internal/j;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/google/android/gms/clearcut/ClearcutLogger;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fk;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dj;->a(Landroid/content/Context;)Lcom/google/android/gms/clearcut/ClearcutLogger;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/google/android/libraries/places/internal/dj;
    .registers 4

    .line 38
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fk;->o()Lcom/google/android/gms/clearcut/ClearcutLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fk;->c:Lcom/google/android/libraries/places/internal/dn;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/fk;->a:Lcom/google/android/libraries/places/internal/au;

    .line 39
    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/places/internal/ft;->a(Lcom/google/android/gms/clearcut/ClearcutLogger;Lcom/google/android/libraries/places/internal/dn;Lcom/google/android/libraries/places/internal/dq;)Lcom/google/android/libraries/places/internal/dj;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/google/android/libraries/places/internal/u;
    .registers 6

    .line 41
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fk;->i()Lcom/google/android/libraries/places/internal/fj;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fk;->l()Lcom/google/android/libraries/places/internal/d;

    move-result-object v1

    .line 43
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fk;->n()Lcom/google/android/libraries/places/internal/j;

    move-result-object v2

    .line 44
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fk;->p()Lcom/google/android/libraries/places/internal/dj;

    move-result-object v3

    .line 45
    invoke-static {}, Lcom/google/android/libraries/places/internal/b;->a()Lcom/google/android/libraries/places/internal/a;

    move-result-object v4

    .line 46
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/dm;->a(Lcom/google/android/libraries/places/internal/fj;Lcom/google/android/libraries/places/internal/d;Lcom/google/android/libraries/places/internal/j;Lcom/google/android/libraries/places/internal/dj;Lcom/google/android/libraries/places/internal/a;)Lcom/google/android/libraries/places/internal/u;

    move-result-object v0

    return-object v0
.end method
