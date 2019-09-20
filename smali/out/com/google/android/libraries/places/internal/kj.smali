.class final Lcom/google/android/libraries/places/internal/kj;
.super Lcom/google/android/libraries/places/internal/kp;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/kp;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/libraries/places/internal/kg;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/kg;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/kj;->a:Lcom/google/android/libraries/places/internal/kg;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/kp;-><init>(Lcom/google/android/libraries/places/internal/kg;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/libraries/places/internal/ki;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/kj;->a:Lcom/google/android/libraries/places/internal/kg;

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/ki;-><init>(Lcom/google/android/libraries/places/internal/kg;)V

    return-object v0
.end method
