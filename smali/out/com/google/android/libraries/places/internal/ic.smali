.class final Lcom/google/android/libraries/places/internal/ic;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcom/google/android/libraries/places/internal/ib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/ib<",
            "*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/android/libraries/places/internal/ib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/ib<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/ib;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/ib;-><init>(B)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ic;->a:Lcom/google/android/libraries/places/internal/ib;

    .line 9
    invoke-static {}, Lcom/google/android/libraries/places/internal/ic;->b()Lcom/google/android/libraries/places/internal/ib;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/ic;->b:Lcom/google/android/libraries/places/internal/ib;

    return-void
.end method

.method static a()Lcom/google/android/libraries/places/internal/ib;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/ib<",
            "*>;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/libraries/places/internal/ic;->b:Lcom/google/android/libraries/places/internal/ib;

    if-nez v0, :cond_c

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_c
    sget-object v0, Lcom/google/android/libraries/places/internal/ic;->b:Lcom/google/android/libraries/places/internal/ib;

    return-object v0
.end method

.method private static b()Lcom/google/android/libraries/places/internal/ib;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/ib<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/ib;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    const/4 v0, 0x0

    return-object v0
.end method
