.class public final enum Lcom/google/android/libraries/places/internal/dv;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/dv;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/places/internal/dv;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:Lcom/google/android/libraries/places/internal/dv;

.field public static final enum b:Lcom/google/android/libraries/places/internal/dv;

.field private static final synthetic c:[Lcom/google/android/libraries/places/internal/dv;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 7
    new-instance v0, Lcom/google/android/libraries/places/internal/dv;

    const-string v1, "FRAGMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/dv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/dv;->a:Lcom/google/android/libraries/places/internal/dv;

    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/dv;

    const-string v1, "INTENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/libraries/places/internal/dv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/dv;->b:Lcom/google/android/libraries/places/internal/dv;

    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [Lcom/google/android/libraries/places/internal/dv;

    sget-object v1, Lcom/google/android/libraries/places/internal/dv;->a:Lcom/google/android/libraries/places/internal/dv;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/internal/dv;->b:Lcom/google/android/libraries/places/internal/dv;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/libraries/places/internal/dv;->c:[Lcom/google/android/libraries/places/internal/dv;

    .line 10
    new-instance v0, Lcom/google/android/libraries/places/internal/dw;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/dw;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/dv;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/dv;
    .registers 2

    .line 2
    const-class v0, Lcom/google/android/libraries/places/internal/dv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/dv;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/dv;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/dv;->c:[Lcom/google/android/libraries/places/internal/dv;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/dv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/dv;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/dv;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method