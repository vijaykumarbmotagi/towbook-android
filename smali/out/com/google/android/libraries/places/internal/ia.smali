.class public Lcom/google/android/libraries/places/internal/ia;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcom/google/android/libraries/places/internal/ia;

.field private static volatile b:Z = false


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    invoke-static {}, Lcom/google/android/libraries/places/internal/ia;->b()Ljava/lang/Class;

    .line 13
    new-instance v0, Lcom/google/android/libraries/places/internal/ia;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/ia;-><init>(B)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ia;->a:Lcom/google/android/libraries/places/internal/ia;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/ia;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(B)V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ia;->c:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/google/android/libraries/places/internal/ia;
    .registers 1

    .line 4
    invoke-static {}, Lcom/google/android/libraries/places/internal/hz;->a()Lcom/google/android/libraries/places/internal/ia;

    move-result-object v0

    return-object v0
.end method

.method private static b()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.Extension"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method
