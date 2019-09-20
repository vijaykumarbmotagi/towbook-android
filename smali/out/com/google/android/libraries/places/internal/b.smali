.class public final Lcom/google/android/libraries/places/internal/b;
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    new-instance v0, Lcom/google/android/libraries/places/internal/b;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/b;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/libraries/places/internal/a;
    .registers 2

    .line 2
    invoke-static {}, Lcom/google/android/libraries/places/internal/fh;->a()Lcom/google/android/libraries/places/internal/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/jh;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/a;

    return-object v0
.end method


# virtual methods
.method public final synthetic b()Ljava/lang/Object;
    .registers 2

    .line 4
    invoke-static {}, Lcom/google/android/libraries/places/internal/b;->a()Lcom/google/android/libraries/places/internal/a;

    move-result-object v0

    return-object v0
.end method
