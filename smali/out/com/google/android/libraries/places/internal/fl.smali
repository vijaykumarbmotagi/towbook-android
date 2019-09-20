.class public Lcom/google/android/libraries/places/internal/fl;
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
.field public final a:Lcom/google/android/libraries/places/internal/ff;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/ff;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fl;->a:Lcom/google/android/libraries/places/internal/ff;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/libraries/places/internal/es;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fl;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ff;->a(Lcom/google/android/libraries/places/internal/es;)V

    return-void
.end method

.method public final synthetic b()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
