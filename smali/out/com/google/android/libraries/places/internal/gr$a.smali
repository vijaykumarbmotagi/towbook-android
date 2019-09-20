.class public final Lcom/google/android/libraries/places/internal/gr$a;
.super Lcom/google/android/libraries/places/internal/ij$a;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/jq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/gr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/ij$a<",
        "Lcom/google/android/libraries/places/internal/gr;",
        "Lcom/google/android/libraries/places/internal/gr$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/jq;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 2
    sget-object v0, Lcom/google/android/libraries/places/internal/gr;->o:Lcom/google/android/libraries/places/internal/gr;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/ij$a;-><init>(Lcom/google/android/libraries/places/internal/ij;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/places/internal/gr$b;)Lcom/google/android/libraries/places/internal/gr$a;
    .registers 4

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gr$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v0, Lcom/google/android/libraries/places/internal/gr;

    if-nez p1, :cond_f

    .line 9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 10
    :cond_f
    iget v1, v0, Lcom/google/android/libraries/places/internal/gr;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/google/android/libraries/places/internal/gr;->a:I

    .line 12
    iget p1, p1, Lcom/google/android/libraries/places/internal/gr$b;->f:I

    .line 13
    iput p1, v0, Lcom/google/android/libraries/places/internal/gr;->b:I

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/places/internal/hf;)Lcom/google/android/libraries/places/internal/gr$a;
    .registers 3

    .line 15
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 16
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gr$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v0, Lcom/google/android/libraries/places/internal/gr;

    if-nez p1, :cond_f

    .line 19
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 20
    :cond_f
    iput-object p1, v0, Lcom/google/android/libraries/places/internal/gr;->e:Lcom/google/android/libraries/places/internal/hf;

    .line 21
    iget p1, v0, Lcom/google/android/libraries/places/internal/gr;->a:I

    or-int/lit8 p1, p1, 0x40

    iput p1, v0, Lcom/google/android/libraries/places/internal/gr;->a:I

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/gr$a;
    .registers 5

    .line 23
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 24
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gr$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v0, Lcom/google/android/libraries/places/internal/gr;

    if-nez p1, :cond_f

    .line 27
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 28
    :cond_f
    iget v1, v0, Lcom/google/android/libraries/places/internal/gr;->a:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/libraries/places/internal/gr;->a:I

    .line 29
    iput-object p1, v0, Lcom/google/android/libraries/places/internal/gr;->l:Ljava/lang/String;

    return-object p0
.end method
