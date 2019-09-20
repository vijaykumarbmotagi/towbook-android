.class public final Lcom/google/android/libraries/places/internal/hf$a;
.super Lcom/google/android/libraries/places/internal/ij$a;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/jq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/hf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/ij$a<",
        "Lcom/google/android/libraries/places/internal/hf;",
        "Lcom/google/android/libraries/places/internal/hf$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/jq;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 2
    sget-object v0, Lcom/google/android/libraries/places/internal/hf;->j:Lcom/google/android/libraries/places/internal/hf;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/ij$a;-><init>(Lcom/google/android/libraries/places/internal/ij;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/places/internal/hf$b;)Lcom/google/android/libraries/places/internal/hf$a;
    .registers 4

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hf$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v0, Lcom/google/android/libraries/places/internal/hf;

    if-nez p1, :cond_f

    .line 9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 10
    :cond_f
    iget v1, v0, Lcom/google/android/libraries/places/internal/hf;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/libraries/places/internal/hf;->a:I

    .line 12
    iget p1, p1, Lcom/google/android/libraries/places/internal/hf$b;->c:I

    .line 13
    iput p1, v0, Lcom/google/android/libraries/places/internal/hf;->b:I

    return-object p0
.end method
