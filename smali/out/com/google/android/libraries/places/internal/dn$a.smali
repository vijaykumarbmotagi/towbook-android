.class public abstract Lcom/google/android/libraries/places/internal/dn$a;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(I)Lcom/google/android/libraries/places/internal/dn$a;
.end method

.method public abstract a(Lcom/google/android/libraries/places/internal/dn$b;)Lcom/google/android/libraries/places/internal/dn$a;
.end method

.method abstract a(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/dn$a;
.end method

.method abstract a()Lcom/google/android/libraries/places/internal/dn;
.end method

.method public final b()Lcom/google/android/libraries/places/internal/dn;
    .registers 4

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/dn$a;->a()Lcom/google/android/libraries/places/internal/dn;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/dn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Package name must not be empty."

    .line 5
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-object v0
.end method
