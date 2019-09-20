.class public final enum Lcom/google/android/libraries/places/internal/li;
.super Ljava/lang/Enum;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/li;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/places/internal/li;

.field public static final enum b:Lcom/google/android/libraries/places/internal/li;

.field private static final synthetic c:[Lcom/google/android/libraries/places/internal/li;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 4
    new-instance v0, Lcom/google/android/libraries/places/internal/li;

    const-string v1, "ASCENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/li;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/li;->a:Lcom/google/android/libraries/places/internal/li;

    .line 5
    new-instance v0, Lcom/google/android/libraries/places/internal/li;

    const-string v1, "DESCENDING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/libraries/places/internal/li;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/li;->b:Lcom/google/android/libraries/places/internal/li;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lcom/google/android/libraries/places/internal/li;

    sget-object v1, Lcom/google/android/libraries/places/internal/li;->a:Lcom/google/android/libraries/places/internal/li;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/li;->b:Lcom/google/android/libraries/places/internal/li;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/libraries/places/internal/li;->c:[Lcom/google/android/libraries/places/internal/li;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/li;
    .registers 2

    .line 2
    const-class v0, Lcom/google/android/libraries/places/internal/li;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/li;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/li;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/li;->c:[Lcom/google/android/libraries/places/internal/li;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/li;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/li;

    return-object v0
.end method
