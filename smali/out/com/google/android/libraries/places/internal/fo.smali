.class public Lcom/google/android/libraries/places/internal/fo;
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
.field public a:Landroid/content/Context;

.field public b:Lcom/google/android/libraries/places/internal/au;

.field public c:Lcom/google/android/libraries/places/internal/dn;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/fo;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .registers 2

    .line 7
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/fj;->a(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 8
    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/jh;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/volley/RequestQueue;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/support/v7/app/AppCompatActivity;Landroid/os/Bundle;)Lcom/google/android/libraries/places/internal/fm;
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/google/android/libraries/places/internal/fo;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {}, Lcom/google/android/libraries/places/internal/fm;->c()Lcom/google/android/libraries/places/internal/fn;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/libraries/places/internal/fn;->a(Landroid/support/v7/app/AppCompatActivity;)Lcom/google/android/libraries/places/internal/fn;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fn;->a(Landroid/os/Bundle;)Lcom/google/android/libraries/places/internal/fn;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fn;->a()Lcom/google/android/libraries/places/internal/fm;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 5
    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 0
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a()Lcom/google/android/libraries/places/internal/fk;
    .registers 6

    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fo;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/jh;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fo;->b:Lcom/google/android/libraries/places/internal/au;

    const-class v1, Lcom/google/android/libraries/places/internal/au;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/jh;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fo;->c:Lcom/google/android/libraries/places/internal/dn;

    const-class v1, Lcom/google/android/libraries/places/internal/dn;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/jh;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 16
    new-instance v0, Lcom/google/android/libraries/places/internal/fk;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fo;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/fo;->b:Lcom/google/android/libraries/places/internal/au;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fo;->c:Lcom/google/android/libraries/places/internal/dn;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/fk;-><init>(Landroid/content/Context;Lcom/google/android/libraries/places/internal/au;Lcom/google/android/libraries/places/internal/dn;B)V

    return-object v0
.end method

.method public synthetic a(Lcom/google/android/libraries/places/internal/au;)Lcom/google/android/libraries/places/internal/fo;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fo;->b(Lcom/google/android/libraries/places/internal/au;)Lcom/google/android/libraries/places/internal/fo;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lcom/google/android/libraries/places/internal/dn;)Lcom/google/android/libraries/places/internal/fo;
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fo;->b(Lcom/google/android/libraries/places/internal/dn;)Lcom/google/android/libraries/places/internal/fo;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/content/Context;)Lcom/google/android/libraries/places/internal/fo;
    .registers 2

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fo;->c(Landroid/content/Context;)Lcom/google/android/libraries/places/internal/fo;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/android/libraries/places/internal/au;)Lcom/google/android/libraries/places/internal/fo;
    .registers 2

    .line 20
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/jh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/au;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fo;->b:Lcom/google/android/libraries/places/internal/au;

    return-object p0
.end method

.method public b(Lcom/google/android/libraries/places/internal/dn;)Lcom/google/android/libraries/places/internal/fo;
    .registers 2

    .line 22
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/jh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/dn;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fo;->c:Lcom/google/android/libraries/places/internal/dn;

    return-object p0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 9
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public c(Landroid/content/Context;)Lcom/google/android/libraries/places/internal/fo;
    .registers 2

    .line 18
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/jh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fo;->a:Landroid/content/Context;

    return-object p0
.end method
