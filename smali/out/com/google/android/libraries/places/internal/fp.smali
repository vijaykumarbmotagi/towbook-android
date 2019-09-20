.class public final Lcom/google/android/libraries/places/internal/fp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/places/internal/fp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/dv;

.field public final b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

.field public final c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:Z

.field public o:I

.field public p:J

.field public final q:Lcom/google/android/libraries/places/internal/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Lcom/google/android/libraries/places/internal/fq;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/fq;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/fp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-class v0, Lcom/google/android/libraries/places/internal/dv;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/dv;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/fp;->a:Lcom/google/android/libraries/places/internal/dv;

    .line 12
    const-class v0, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/fp;->b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 13
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/fp;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/fp;->d:Z

    .line 14
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/fp;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/fp;->e:Z

    .line 15
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/fp;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/fp;->f:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/fp;->g:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/fp;->h:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/fp;->i:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/fp;->j:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/fp;->k:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/fp;->l:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/fp;->m:I

    .line 23
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/fp;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/fp;->n:Z

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/fp;->o:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/fp;->p:J

    .line 26
    const-class v0, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fp;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 28
    new-instance p1, Lcom/google/android/libraries/places/internal/c;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fp;->q:Lcom/google/android/libraries/places/internal/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/places/internal/dv;Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Ljava/lang/String;Lcom/google/android/libraries/places/internal/a;)V
    .registers 5
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fp;->a:Lcom/google/android/libraries/places/internal/dv;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/fp;->b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 4
    invoke-static {p3}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fp;->k:Ljava/lang/String;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/google/android/libraries/places/internal/fp;->g:I

    const-wide/16 p1, -0x1

    .line 6
    iput-wide p1, p0, Lcom/google/android/libraries/places/internal/fp;->p:J

    .line 7
    invoke-static {}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;->newInstance()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fp;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 8
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/fp;->q:Lcom/google/android/libraries/places/internal/a;

    return-void
.end method

.method private static a(Landroid/os/Parcel;Z)V
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Z
    .registers 1

    .line 30
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Z
    .registers 6

    .line 51
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/fp;->p:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 32
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fp;->a:Lcom/google/android/libraries/places/internal/dv;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 33
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fp;->b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 34
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/fp;->d:Z

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/fp;->a(Landroid/os/Parcel;Z)V

    .line 35
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/fp;->e:Z

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/fp;->a(Landroid/os/Parcel;Z)V

    .line 36
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/fp;->f:Z

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/fp;->a(Landroid/os/Parcel;Z)V

    .line 37
    iget v0, p0, Lcom/google/android/libraries/places/internal/fp;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v0, p0, Lcom/google/android/libraries/places/internal/fp;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Lcom/google/android/libraries/places/internal/fp;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/google/android/libraries/places/internal/fp;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fp;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lcom/google/android/libraries/places/internal/fp;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Lcom/google/android/libraries/places/internal/fp;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/fp;->n:Z

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/fp;->a(Landroid/os/Parcel;Z)V

    .line 45
    iget v0, p0, Lcom/google/android/libraries/places/internal/fp;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/fp;->p:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fp;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
