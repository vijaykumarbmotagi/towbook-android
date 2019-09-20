.class public final Lcom/google/android/libraries/places/internal/gm$b;
.super Lcom/google/android/libraries/places/internal/ij$a;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/jq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/gm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/ij$a<",
        "Lcom/google/android/libraries/places/internal/gm;",
        "Lcom/google/android/libraries/places/internal/gm$b;",
        ">;",
        "Lcom/google/android/libraries/places/internal/jq;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 2
    sget-object v0, Lcom/google/android/libraries/places/internal/gm;->p:Lcom/google/android/libraries/places/internal/gm;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/ij$a;-><init>(Lcom/google/android/libraries/places/internal/ij;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/places/internal/gm$a;)Lcom/google/android/libraries/places/internal/gm$b;
    .registers 4

    .line 15
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 16
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gm$b;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v0, Lcom/google/android/libraries/places/internal/gm;

    if-nez p1, :cond_f

    .line 19
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 20
    :cond_f
    iget v1, v0, Lcom/google/android/libraries/places/internal/gm;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/google/android/libraries/places/internal/gm;->a:I

    .line 22
    iget p1, p1, Lcom/google/android/libraries/places/internal/gm$a;->c:I

    .line 23
    iput p1, v0, Lcom/google/android/libraries/places/internal/gm;->c:I

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/places/internal/gm$c;)Lcom/google/android/libraries/places/internal/gm$b;
    .registers 4

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gm$b;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v0, Lcom/google/android/libraries/places/internal/gm;

    if-nez p1, :cond_f

    .line 9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 10
    :cond_f
    iget v1, v0, Lcom/google/android/libraries/places/internal/gm;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/libraries/places/internal/gm;->a:I

    .line 12
    iget p1, p1, Lcom/google/android/libraries/places/internal/gm$c;->d:I

    .line 13
    iput p1, v0, Lcom/google/android/libraries/places/internal/gm;->b:I

    return-object p0
.end method
