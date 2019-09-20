.class public final Lcom/google/android/libraries/places/internal/cj;
.super Lcom/google/android/libraries/places/internal/bn;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/places/internal/cj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    new-instance v0, Lcom/google/android/libraries/places/internal/ck;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/ck;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/cj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/places/api/model/Place;D)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/bn;-><init>(Lcom/google/android/libraries/places/api/model/Place;D)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 3
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/PlaceLikelihood;->getPlace()Lcom/google/android/libraries/places/api/model/Place;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/PlaceLikelihood;->getLikelihood()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
