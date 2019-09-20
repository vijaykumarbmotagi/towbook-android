.class public Lcom/google/android/libraries/places/internal/fn;
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
.method constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/fn;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/libraries/places/internal/fm;
    .registers 5

    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fn;->a:Landroid/support/v7/app/AppCompatActivity;

    const-class v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/jh;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    new-instance v0, Lcom/google/android/libraries/places/internal/fm;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fn;->a:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/fn;->b:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/fm;-><init>(Landroid/support/v7/app/AppCompatActivity;Landroid/os/Bundle;B)V

    return-object v0
.end method

.method public synthetic a(Landroid/os/Bundle;)Lcom/google/android/libraries/places/internal/fn;
    .registers 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fn;->b(Landroid/os/Bundle;)Lcom/google/android/libraries/places/internal/fn;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/support/v7/app/AppCompatActivity;)Lcom/google/android/libraries/places/internal/fn;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fn;->b(Landroid/support/v7/app/AppCompatActivity;)Lcom/google/android/libraries/places/internal/fn;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/os/Bundle;)Lcom/google/android/libraries/places/internal/fn;
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fn;->b:Landroid/os/Bundle;

    return-object p0
.end method

.method public b(Landroid/support/v7/app/AppCompatActivity;)Lcom/google/android/libraries/places/internal/fn;
    .registers 2

    .line 7
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/jh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fn;->a:Landroid/support/v7/app/AppCompatActivity;

    return-object p0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
