.class public final enum Lcom/google/android/libraries/places/internal/gm$a;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/im;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/gm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/gm$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/im;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/places/internal/gm$a;

.field public static final enum b:Lcom/google/android/libraries/places/internal/gm$a;

.field private static final synthetic d:[Lcom/google/android/libraries/places/internal/gm$a;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/gm$a;

    const-string v1, "OVERLAY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/gm$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/gm$a;->a:Lcom/google/android/libraries/places/internal/gm$a;

    .line 9
    new-instance v0, Lcom/google/android/libraries/places/internal/gm$a;

    const-string v1, "FULLSCREEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/libraries/places/internal/gm$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/gm$a;->b:Lcom/google/android/libraries/places/internal/gm$a;

    .line 10
    new-array v0, v4, [Lcom/google/android/libraries/places/internal/gm$a;

    sget-object v1, Lcom/google/android/libraries/places/internal/gm$a;->a:Lcom/google/android/libraries/places/internal/gm$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/gm$a;->b:Lcom/google/android/libraries/places/internal/gm$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/libraries/places/internal/gm$a;->d:[Lcom/google/android/libraries/places/internal/gm$a;

    .line 11
    new-instance v0, Lcom/google/android/libraries/places/internal/gn;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/gn;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    iput p3, p0, Lcom/google/android/libraries/places/internal/gm$a;->c:I

    return-void
.end method

.method public static b()Lcom/google/android/libraries/places/internal/in;
    .registers 1

    .line 4
    sget-object v0, Lcom/google/android/libraries/places/internal/go;->a:Lcom/google/android/libraries/places/internal/in;

    return-object v0
.end method

.method private static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/gm$a;
    .registers 2

    .line 2
    const-class v0, Lcom/google/android/libraries/places/internal/gm$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/gm$a;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/gm$a;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/gm$a;->d:[Lcom/google/android/libraries/places/internal/gm$a;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/gm$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/gm$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 3
    iget v0, p0, Lcom/google/android/libraries/places/internal/gm$a;->c:I

    return v0
.end method
