.class final Lcom/google/android/gms/internal/clearcut/zzdc;
.super Lcom/google/android/gms/internal/clearcut/zzav;

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/zzcn;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/zzav<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/google/android/gms/internal/clearcut/zzcn<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zzlw:Lcom/google/android/gms/internal/clearcut/zzdc;


# instance fields
.field private size:I

.field private zzlx:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzdc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/zzdc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlw:Lcom/google/android/gms/internal/clearcut/zzdc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzav;->zzv()V

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzdc;-><init>([JI)V

    return-void
.end method

.method private constructor <init>([JI)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzav;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    iput p2, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    return-void
.end method

.method public static zzbx()Lcom/google/android/gms/internal/clearcut/zzdc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlw:Lcom/google/android/gms/internal/clearcut/zzdc;

    return-object v0
.end method

.method private final zzg(I)V
    .registers 3

    if-ltz p1, :cond_8

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    if-lt p1, v0, :cond_7

    goto :goto_8

    :cond_7
    return-void

    :cond_8
    :goto_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzdc;->zzh(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzh(I)Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final zzk(IJ)V
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzav;->zzw()V

    if-ltz p1, :cond_4b

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    if-le p1, v0, :cond_a

    goto :goto_4b

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3a

    :cond_1e
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    :goto_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    aput-wide p2, v0, p1

    iget p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    iget p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->modCount:I

    return-void

    :cond_4b
    :goto_4b
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzdc;->zzh(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .registers 5

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzdc;->zzk(IJ)V

    return-void
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzav;->zzw()V

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/zzci;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/android/gms/internal/clearcut/zzdc;

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzav;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzdc;

    iget v0, p1, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return v1

    :cond_17
    const v0, 0x7fffffff

    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    sub-int/2addr v0, v2

    iget v2, p1, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    if-ge v0, v2, :cond_27

    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1

    :cond_27
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    iget v2, p1, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    array-length v2, v2

    if-le v0, v2, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    :cond_39
    iget-object v2, p1, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    iget v4, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    iget p1, p1, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    invoke-static {v2, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    iget p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->modCount:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/clearcut/zzdc;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzav;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzdc;

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    iget v2, p1, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    :cond_17
    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    const/4 v1, 0x0

    :goto_1a
    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    aget-wide v4, v2, v1

    aget-wide v6, p1, v1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_29

    return v3

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2c
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzdc;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final getLong(I)J
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzdc;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final hashCode()I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    if-ge v1, v2, :cond_14

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzci;->zzl(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzav;->zzw()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzdc;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    aget-wide v1, v0, p1

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    iget v5, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    sub-int/2addr v5, p1

    invoke-static {v0, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1c
    iget p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    iget p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->modCount:I

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzav;->zzw()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    if-ge v1, v2, :cond_32

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    iget v3, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    sub-int/2addr v3, v1

    invoke-static {p1, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    iget p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->modCount:I

    return v0

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_32
    return v0
.end method

.method protected final removeRange(II)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzav;->zzw()V

    if-ge p2, p1, :cond_d

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    iget p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->modCount:I

    return-void
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzav;->zzw()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzdc;->zzg(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    aget-wide v2, p2, p1

    iget-object p2, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    aput-wide v0, p2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    return v0
.end method

.method public final synthetic zzi(I)Lcom/google/android/gms/internal/clearcut/zzcn;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    if-ge p1, v0, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzdc;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->zzlx:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzdc;-><init>([JI)V

    return-object v0
.end method

.method public final zzm(J)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzdc;->size:I

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzdc;->zzk(IJ)V

    return-void
.end method
