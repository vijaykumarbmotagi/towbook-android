.class public Landroid/databinding/ObservableInt;
.super Landroid/databinding/BaseObservableField;
.source "ObservableInt.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/databinding/ObservableInt;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 103
    new-instance v0, Landroid/databinding/ObservableInt$1;

    invoke-direct {v0}, Landroid/databinding/ObservableInt$1;-><init>()V

    sput-object v0, Landroid/databinding/ObservableInt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Landroid/databinding/BaseObservableField;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/databinding/BaseObservableField;-><init>()V

    .line 54
    iput p1, p0, Landroid/databinding/ObservableInt;->mValue:I

    return-void
.end method

.method public varargs constructor <init>([Landroid/databinding/Observable;)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Landroid/databinding/BaseObservableField;-><init>([Landroid/databinding/Observable;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public get()I
    .registers 2

    .line 78
    iget v0, p0, Landroid/databinding/ObservableInt;->mValue:I

    return v0
.end method

.method public set(I)V
    .registers 3

    .line 87
    iget v0, p0, Landroid/databinding/ObservableInt;->mValue:I

    if-eq p1, v0, :cond_9

    .line 88
    iput p1, p0, Landroid/databinding/ObservableInt;->mValue:I

    .line 89
    invoke-virtual {p0}, Landroid/databinding/ObservableInt;->notifyChange()V

    :cond_9
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 100
    iget p2, p0, Landroid/databinding/ObservableInt;->mValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
