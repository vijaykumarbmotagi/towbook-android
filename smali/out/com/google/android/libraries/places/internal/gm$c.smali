.class public final enum Lcom/google/android/libraries/places/internal/gm$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/gm$c;",
        ">;",
        "Lcom/google/android/libraries/places/internal/im;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/places/internal/gm$c;

.field public static final enum b:Lcom/google/android/libraries/places/internal/gm$c;

.field public static final enum c:Lcom/google/android/libraries/places/internal/gm$c;

.field private static final enum e:Lcom/google/android/libraries/places/internal/gm$c;

.field private static final enum f:Lcom/google/android/libraries/places/internal/gm$c;

.field private static final enum g:Lcom/google/android/libraries/places/internal/gm$c;

.field private static final enum h:Lcom/google/android/libraries/places/internal/gm$c;

.field private static final enum i:Lcom/google/android/libraries/places/internal/gm$c;

.field private static final enum j:Lcom/google/android/libraries/places/internal/gm$c;

.field private static final synthetic k:[Lcom/google/android/libraries/places/internal/gm$c;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/gm$c;

    const-string v1, "UNKNOWN_ORIGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/libraries/places/internal/gm$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/gm$c;->a:Lcom/google/android/libraries/places/internal/gm$c;

    .line 9
    new-instance v0, Lcom/google/android/libraries/places/internal/gm$c;

    const-string v1, "ANDROID_AUTOCOMPLETE_FRAGMENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/libraries/places/internal/gm$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/gm$c;->b:Lcom/google/android/libraries/places/internal/gm$c;

    .line 10
    new-instance v0, Lcom/google/android/libraries/places/internal/gm$c;

    const-string v1, "ANDROID_AUTOCOMPLETE_MANUAL_LAUNCHER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/libraries/places/internal/gm$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/gm$c;->c:Lcom/google/android/libraries/places/internal/gm$c;

    .line 11
    new-instance v0, Lcom/google/android/libraries/places/internal/gm$c;

    const-string v1, "ANDROID_PLACE_PICKER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/libraries/places/internal/gm$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/gm$c;->e:Lcom/google/android/libraries/places/internal/gm$c;

    .line 12
    new-instance v0, Lcom/google/android/libraries/places/internal/gm$c;

    const-string v1, "ANDROID_ADAPTER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/libraries/places/internal/gm$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/gm$c;->f:Lcom/google/android/libraries/places/internal/gm$c;

    .line 13
    new-instance v0, Lcom/google/android/libraries/places/internal/gm$c;

    const-string v1, "IOS_AUTOCOMPLETE_VIEW_CONTROLLER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/libraries/places/internal/gm$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/gm$c;->g:Lcom/google/android/libraries/places/internal/gm$c;

    .line 14
    new-instance v0, Lcom/google/android/libraries/places/internal/gm$c;

    const-string v1, "IOS_AUTOCOMPLETE_SEARCH_CONTROLLER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/libraries/places/internal/gm$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/gm$c;->h:Lcom/google/android/libraries/places/internal/gm$c;

    .line 15
    new-instance v0, Lcom/google/android/libraries/places/internal/gm$c;

    const-string v1, "IOS_AUTOCOMPLETE_DATA_SOURCE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/google/android/libraries/places/internal/gm$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/gm$c;->i:Lcom/google/android/libraries/places/internal/gm$c;

    .line 16
    new-instance v0, Lcom/google/android/libraries/places/internal/gm$c;

    const-string v1, "IOS_PLACE_PICKER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/google/android/libraries/places/internal/gm$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/gm$c;->j:Lcom/google/android/libraries/places/internal/gm$c;

    const/16 v0, 0x9

    .line 17
    new-array v0, v0, [Lcom/google/android/libraries/places/internal/gm$c;

    sget-object v1, Lcom/google/android/libraries/places/internal/gm$c;->a:Lcom/google/android/libraries/places/internal/gm$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/gm$c;->b:Lcom/google/android/libraries/places/internal/gm$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/libraries/places/internal/gm$c;->c:Lcom/google/android/libraries/places/internal/gm$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/libraries/places/internal/gm$c;->e:Lcom/google/android/libraries/places/internal/gm$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/libraries/places/internal/gm$c;->f:Lcom/google/android/libraries/places/internal/gm$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/libraries/places/internal/gm$c;->g:Lcom/google/android/libraries/places/internal/gm$c;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/libraries/places/internal/gm$c;->h:Lcom/google/android/libraries/places/internal/gm$c;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/libraries/places/internal/gm$c;->i:Lcom/google/android/libraries/places/internal/gm$c;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/libraries/places/internal/gm$c;->j:Lcom/google/android/libraries/places/internal/gm$c;

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/android/libraries/places/internal/gm$c;->k:[Lcom/google/android/libraries/places/internal/gm$c;

    .line 18
    new-instance v0, Lcom/google/android/libraries/places/internal/gp;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/gp;-><init>()V

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
    iput p3, p0, Lcom/google/android/libraries/places/internal/gm$c;->d:I

    return-void
.end method

.method public static b()Lcom/google/android/libraries/places/internal/in;
    .registers 1

    .line 4
    sget-object v0, Lcom/google/android/libraries/places/internal/gq;->a:Lcom/google/android/libraries/places/internal/in;

    return-object v0
.end method

.method private static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/gm$c;
    .registers 2

    .line 2
    const-class v0, Lcom/google/android/libraries/places/internal/gm$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/gm$c;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/gm$c;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/gm$c;->k:[Lcom/google/android/libraries/places/internal/gm$c;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/gm$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/gm$c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 3
    iget v0, p0, Lcom/google/android/libraries/places/internal/gm$c;->d:I

    return v0
.end method
