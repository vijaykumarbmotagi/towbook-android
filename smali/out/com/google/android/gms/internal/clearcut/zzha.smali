.class public final Lcom/google/android/gms/internal/clearcut/zzha;
.super Lcom/google/android/gms/internal/clearcut/zzfu;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/zzfu<",
        "Lcom/google/android/gms/internal/clearcut/zzha;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private tag:Ljava/lang/String;

.field public zzbjf:J

.field public zzbjg:J

.field private zzbjh:J

.field public zzbji:I

.field private zzbjj:Ljava/lang/String;

.field private zzbjk:I

.field private zzbjl:Z

.field private zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

.field private zzbjn:[B

.field private zzbjo:Lcom/google/android/gms/internal/clearcut/zzge$zzd;

.field public zzbjp:[B

.field private zzbjq:Ljava/lang/String;

.field private zzbjr:Ljava/lang/String;

.field private zzbjs:Lcom/google/android/gms/internal/clearcut/zzgy;

.field private zzbjt:Ljava/lang/String;

.field public zzbju:J

.field private zzbjv:Lcom/google/android/gms/internal/clearcut/zzgz;

.field public zzbjw:[B

.field private zzbjx:Ljava/lang/String;

.field private zzbjy:I

.field private zzbjz:[I

.field private zzbka:J

.field private zzbkb:Lcom/google/android/gms/internal/clearcut/zzge$zzs;

.field public zzbkc:Z


# direct methods
.method public constructor <init>()V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzfu;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjh:J

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->tag:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbji:I

    const-string v3, ""

    iput-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjj:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjk:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjl:Z

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzhb;->zzge()[Lcom/google/android/gms/internal/clearcut/zzhb;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    sget-object v3, Lcom/google/android/gms/internal/clearcut/zzgb;->zzse:[B

    iput-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjn:[B

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjo:Lcom/google/android/gms/internal/clearcut/zzge$zzd;

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzgb;->zzse:[B

    iput-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjp:[B

    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjq:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjr:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjs:Lcom/google/android/gms/internal/clearcut/zzgy;

    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjt:Ljava/lang/String;

    const-wide/32 v4, 0x2bf20

    iput-wide v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbju:J

    iput-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjv:Lcom/google/android/gms/internal/clearcut/zzgz;

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzgb;->zzse:[B

    iput-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjw:[B

    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjx:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjy:I

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzgb;->zzrx:[I

    iput-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjz:[I

    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbka:J

    iput-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkb:Lcom/google/android/gms/internal/clearcut/zzge$zzs;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkc:Z

    iput-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzrs:I

    return-void
.end method

.method private final zzgd()Lcom/google/android/gms/internal/clearcut/zzha;
    .registers 5

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/zzfu;->zzeo()Lcom/google/android/gms/internal/clearcut/zzfu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzha;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_73

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    array-length v1, v1

    if-lez v1, :cond_33

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/clearcut/zzhb;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    const/4 v1, 0x0

    :goto_17
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    array-length v2, v2

    if-ge v1, v2, :cond_33

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    aget-object v2, v2, v1

    if-eqz v2, :cond_30

    iget-object v2, v0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/zzfz;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/clearcut/zzhb;

    aput-object v3, v2, v1

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_33
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjo:Lcom/google/android/gms/internal/clearcut/zzge$zzd;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjo:Lcom/google/android/gms/internal/clearcut/zzge$zzd;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjo:Lcom/google/android/gms/internal/clearcut/zzge$zzd;

    :cond_3b
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjs:Lcom/google/android/gms/internal/clearcut/zzgy;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjs:Lcom/google/android/gms/internal/clearcut/zzgy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzfz;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/zzgy;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjs:Lcom/google/android/gms/internal/clearcut/zzgy;

    :cond_49
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjv:Lcom/google/android/gms/internal/clearcut/zzgz;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjv:Lcom/google/android/gms/internal/clearcut/zzgz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzfz;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/zzgz;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjv:Lcom/google/android/gms/internal/clearcut/zzgz;

    :cond_57
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjz:[I

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjz:[I

    array-length v1, v1

    if-lez v1, :cond_6a

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjz:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjz:[I

    :cond_6a
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkb:Lcom/google/android/gms/internal/clearcut/zzge$zzs;

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkb:Lcom/google/android/gms/internal/clearcut/zzge$zzs;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkb:Lcom/google/android/gms/internal/clearcut/zzge$zzs;

    :cond_72
    return-object v0

    :catch_73
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzha;->zzgd()Lcom/google/android/gms/internal/clearcut/zzha;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzha;

    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjf:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjf:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjg:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjg:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->tag:Ljava/lang/String;

    if-nez v1, :cond_27

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->tag:Ljava/lang/String;

    if-eqz v1, :cond_32

    return v2

    :cond_27
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->tag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbji:I

    iget v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbji:I

    if-eq v1, v3, :cond_39

    return v2

    :cond_39
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjj:Ljava/lang/String;

    if-nez v1, :cond_42

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjj:Ljava/lang/String;

    if-eqz v1, :cond_4d

    return v2

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjj:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjj:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    return v2

    :cond_4d
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/zzfy;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    return v2

    :cond_58
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjn:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjn:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_63

    return v2

    :cond_63
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjo:Lcom/google/android/gms/internal/clearcut/zzge$zzd;

    if-nez v1, :cond_6c

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjo:Lcom/google/android/gms/internal/clearcut/zzge$zzd;

    if-eqz v1, :cond_77

    return v2

    :cond_6c
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjo:Lcom/google/android/gms/internal/clearcut/zzge$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjo:Lcom/google/android/gms/internal/clearcut/zzge$zzd;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/clearcut/zzcg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    return v2

    :cond_77
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjp:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjp:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_82

    return v2

    :cond_82
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjq:Ljava/lang/String;

    if-nez v1, :cond_8b

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjq:Ljava/lang/String;

    if-eqz v1, :cond_96

    return v2

    :cond_8b
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjq:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjq:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_96

    return v2

    :cond_96
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjr:Ljava/lang/String;

    if-nez v1, :cond_9f

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjr:Ljava/lang/String;

    if-eqz v1, :cond_aa

    return v2

    :cond_9f
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjr:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_aa

    return v2

    :cond_aa
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjs:Lcom/google/android/gms/internal/clearcut/zzgy;

    if-nez v1, :cond_b3

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjs:Lcom/google/android/gms/internal/clearcut/zzgy;

    if-eqz v1, :cond_be

    return v2

    :cond_b3
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjs:Lcom/google/android/gms/internal/clearcut/zzgy;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjs:Lcom/google/android/gms/internal/clearcut/zzgy;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/clearcut/zzgy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_be

    return v2

    :cond_be
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjt:Ljava/lang/String;

    if-nez v1, :cond_c7

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjt:Ljava/lang/String;

    if-eqz v1, :cond_d2

    return v2

    :cond_c7
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjt:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjt:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d2

    return v2

    :cond_d2
    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbju:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbju:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_db

    return v2

    :cond_db
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjv:Lcom/google/android/gms/internal/clearcut/zzgz;

    if-nez v1, :cond_e4

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjv:Lcom/google/android/gms/internal/clearcut/zzgz;

    if-eqz v1, :cond_ef

    return v2

    :cond_e4
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjv:Lcom/google/android/gms/internal/clearcut/zzgz;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjv:Lcom/google/android/gms/internal/clearcut/zzgz;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/clearcut/zzgz;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ef

    return v2

    :cond_ef
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjw:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjw:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_fa

    return v2

    :cond_fa
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjx:Ljava/lang/String;

    if-nez v1, :cond_103

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjx:Ljava/lang/String;

    if-eqz v1, :cond_10e

    return v2

    :cond_103
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjx:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjx:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10e

    return v2

    :cond_10e
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjz:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjz:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/zzfy;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_119

    return v2

    :cond_119
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkb:Lcom/google/android/gms/internal/clearcut/zzge$zzs;

    if-nez v1, :cond_122

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkb:Lcom/google/android/gms/internal/clearcut/zzge$zzs;

    if-eqz v1, :cond_12d

    return v2

    :cond_122
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkb:Lcom/google/android/gms/internal/clearcut/zzge$zzs;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkb:Lcom/google/android/gms/internal/clearcut/zzge$zzs;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/clearcut/zzcg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12d

    return v2

    :cond_12d
    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkc:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkc:Z

    if-eq v1, v3, :cond_134

    return v2

    :cond_134
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    if-eqz v1, :cond_14a

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzfw;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_141

    goto :goto_14a

    :cond_141
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/zzfw;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_14a
    :goto_14a
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    if-eqz v1, :cond_158

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzfw;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_157

    return v0

    :cond_157
    return v2

    :cond_158
    return v0
.end method

.method public final hashCode()I
    .registers 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjf:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjf:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long v6, v1, v3

    long-to-int v1, v6

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjg:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjg:J

    ushr-long/2addr v3, v5

    xor-long v6, v1, v3

    long-to-int v1, v6

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->tag:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_31

    const/4 v1, 0x0

    goto :goto_37

    :cond_31
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_37
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbji:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjj:Ljava/lang/String;

    if-nez v1, :cond_45

    const/4 v1, 0x0

    goto :goto_4b

    :cond_45
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjj:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x4d5

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/zzfy;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjn:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjo:Lcom/google/android/gms/internal/clearcut/zzge$zzd;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v3, :cond_6d

    const/4 v3, 0x0

    goto :goto_71

    :cond_6d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/zzcg;->hashCode()I

    move-result v3

    :goto_71
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjp:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjq:Ljava/lang/String;

    if-nez v3, :cond_83

    const/4 v3, 0x0

    goto :goto_89

    :cond_83
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjq:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_89
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjr:Ljava/lang/String;

    if-nez v3, :cond_92

    const/4 v3, 0x0

    goto :goto_98

    :cond_92
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_98
    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjs:Lcom/google/android/gms/internal/clearcut/zzgy;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v3, :cond_a1

    const/4 v3, 0x0

    goto :goto_a5

    :cond_a1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/zzgy;->hashCode()I

    move-result v3

    :goto_a5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjt:Ljava/lang/String;

    if-nez v3, :cond_ae

    const/4 v3, 0x0

    goto :goto_b4

    :cond_ae
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbju:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbju:J

    ushr-long v5, v6, v5

    xor-long v7, v3, v5

    long-to-int v3, v7

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjv:Lcom/google/android/gms/internal/clearcut/zzgz;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v3, :cond_c9

    const/4 v3, 0x0

    goto :goto_cd

    :cond_c9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/zzgz;->hashCode()I

    move-result v3

    :goto_cd
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjw:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjx:Ljava/lang/String;

    if-nez v3, :cond_df

    const/4 v3, 0x0

    goto :goto_e5

    :cond_df
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjx:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_e5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjz:[I

    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/zzfy;->hashCode([I)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkb:Lcom/google/android/gms/internal/clearcut/zzge$zzs;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v3, :cond_fb

    const/4 v3, 0x0

    goto :goto_ff

    :cond_fb
    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/zzcg;->hashCode()I

    move-result v3

    :goto_ff
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkc:Z

    if-eqz v3, :cond_108

    const/16 v1, 0x4cf

    :cond_108
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    if-eqz v1, :cond_11e

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzfw;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_118

    goto :goto_11e

    :cond_118
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzfw;->hashCode()I

    move-result v2

    :cond_11e
    :goto_11e
    add-int/2addr v0, v2

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/clearcut/zzfs;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjf:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjf:J

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzi(IJ)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->tag:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->tag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfs;->zza(ILjava/lang/String;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    array-length v0, v0

    if-lez v0, :cond_3f

    const/4 v0, 0x0

    :goto_2d
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    array-length v4, v4

    if-ge v0, v4, :cond_3f

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    aget-object v4, v4, v0

    if-eqz v4, :cond_3c

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->zza(ILcom/google/android/gms/internal/clearcut/zzfz;)V

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjn:[B

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzgb;->zzse:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4f

    const/4 v0, 0x4

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjn:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->zza(I[B)V

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjp:[B

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzgb;->zzse:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5f

    const/4 v0, 0x6

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjp:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->zza(I[B)V

    :cond_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjs:Lcom/google/android/gms/internal/clearcut/zzgy;

    if-eqz v0, :cond_69

    const/4 v0, 0x7

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjs:Lcom/google/android/gms/internal/clearcut/zzgy;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->zza(ILcom/google/android/gms/internal/clearcut/zzfz;)V

    :cond_69
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjq:Ljava/lang/String;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjq:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    const/16 v0, 0x8

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjq:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->zza(ILjava/lang/String;)V

    :cond_7e
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjo:Lcom/google/android/gms/internal/clearcut/zzge$zzd;

    if-eqz v0, :cond_89

    const/16 v0, 0x9

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjo:Lcom/google/android/gms/internal/clearcut/zzge$zzd;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->zze(ILcom/google/android/gms/internal/clearcut/zzdo;)V

    :cond_89
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbji:I

    if-eqz v0, :cond_94

    const/16 v0, 0xb

    iget v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbji:I

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzc(II)V

    :cond_94
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjr:Ljava/lang/String;

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjr:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    const/16 v0, 0xd

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjr:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->zza(ILjava/lang/String;)V

    :cond_a9
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjt:Ljava/lang/String;

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjt:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    const/16 v0, 0xe

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjt:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->zza(ILjava/lang/String;)V

    :cond_be
    iget-wide v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbju:J

    const-wide/32 v6, 0x2bf20

    cmp-long v0, v4, v6

    if-eqz v0, :cond_d5

    iget-wide v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbju:J

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzb(II)V

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzj(J)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzn(J)V

    :cond_d5
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjv:Lcom/google/android/gms/internal/clearcut/zzgz;

    if-eqz v0, :cond_e0

    const/16 v0, 0x10

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjv:Lcom/google/android/gms/internal/clearcut/zzgz;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->zza(ILcom/google/android/gms/internal/clearcut/zzfz;)V

    :cond_e0
    iget-wide v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjg:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_ed

    const/16 v0, 0x11

    iget-wide v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjg:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzi(IJ)V

    :cond_ed
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjw:[B

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzgb;->zzse:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_fe

    const/16 v0, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjw:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/clearcut/zzfs;->zza(I[B)V

    :cond_fe
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjz:[I

    if-eqz v0, :cond_118

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjz:[I

    array-length v0, v0

    if-lez v0, :cond_118

    :goto_107
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjz:[I

    array-length v0, v0

    if-ge v1, v0, :cond_118

    const/16 v0, 0x14

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjz:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzc(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_107

    :cond_118
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkb:Lcom/google/android/gms/internal/clearcut/zzge$zzs;

    if-eqz v0, :cond_123

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkb:Lcom/google/android/gms/internal/clearcut/zzge$zzs;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfs;->zze(ILcom/google/android/gms/internal/clearcut/zzdo;)V

    :cond_123
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjx:Ljava/lang/String;

    if-eqz v0, :cond_138

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjx:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_138

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfs;->zza(ILjava/lang/String;)V

    :cond_138
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkc:Z

    if-eqz v0, :cond_143

    const/16 v0, 0x19

    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkc:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzb(IZ)V

    :cond_143
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjj:Ljava/lang/String;

    if-eqz v0, :cond_158

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjj:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_158

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfs;->zza(ILjava/lang/String;)V

    :cond_158
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzfu;->zza(Lcom/google/android/gms/internal/clearcut/zzfs;)V

    return-void
.end method

.method protected final zzen()I
    .registers 12

    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/zzfu;->zzen()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjf:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v1, 0x1

    if-eqz v5, :cond_14

    iget-wide v5, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjf:J

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzd(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->tag:Ljava/lang/String;

    const/4 v5, 0x2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->tag:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->tag:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzb(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2a
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    const/4 v6, 0x0

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    array-length v2, v2

    if-lez v2, :cond_4b

    move v2, v0

    const/4 v0, 0x0

    :goto_36
    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    array-length v7, v7

    if-ge v0, v7, :cond_4a

    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjm:[Lcom/google/android/gms/internal/clearcut/zzhb;

    aget-object v7, v7, v0

    if-eqz v7, :cond_47

    const/4 v8, 0x3

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzb(ILcom/google/android/gms/internal/clearcut/zzfz;)I

    move-result v7

    add-int/2addr v2, v7

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_4a
    move v0, v2

    :cond_4b
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjn:[B

    sget-object v7, Lcom/google/android/gms/internal/clearcut/zzgb;->zzse:[B

    invoke-static {v2, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5d

    const/4 v2, 0x4

    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjn:[B

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5d
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjp:[B

    sget-object v7, Lcom/google/android/gms/internal/clearcut/zzgb;->zzse:[B

    invoke-static {v2, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_6f

    const/4 v2, 0x6

    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjp:[B

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6f
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjs:Lcom/google/android/gms/internal/clearcut/zzgy;

    if-eqz v2, :cond_7b

    const/4 v2, 0x7

    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjs:Lcom/google/android/gms/internal/clearcut/zzgy;

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzb(ILcom/google/android/gms/internal/clearcut/zzfz;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7b
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjq:Ljava/lang/String;

    if-eqz v2, :cond_92

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjq:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_92

    const/16 v2, 0x8

    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjq:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzb(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_92
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjo:Lcom/google/android/gms/internal/clearcut/zzge$zzd;

    if-eqz v2, :cond_9f

    const/16 v2, 0x9

    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjo:Lcom/google/android/gms/internal/clearcut/zzge$zzd;

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzc(ILcom/google/android/gms/internal/clearcut/zzdo;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9f
    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbji:I

    if-eqz v2, :cond_b1

    const/16 v2, 0xb

    iget v7, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbji:I

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzr(I)I

    move-result v2

    invoke-static {v7}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzs(I)I

    move-result v7

    add-int/2addr v2, v7

    add-int/2addr v0, v2

    :cond_b1
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjr:Ljava/lang/String;

    if-eqz v2, :cond_c8

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjr:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c8

    const/16 v2, 0xd

    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjr:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzb(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c8
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjt:Ljava/lang/String;

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjt:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_df

    const/16 v2, 0xe

    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjt:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzb(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_df
    iget-wide v7, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbju:J

    const-wide/32 v9, 0x2bf20

    cmp-long v2, v7, v9

    if-eqz v2, :cond_fa

    iget-wide v7, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbju:J

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzr(I)I

    move-result v2

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzj(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzo(J)I

    move-result v7

    add-int/2addr v2, v7

    add-int/2addr v0, v2

    :cond_fa
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjv:Lcom/google/android/gms/internal/clearcut/zzgz;

    if-eqz v2, :cond_107

    const/16 v2, 0x10

    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjv:Lcom/google/android/gms/internal/clearcut/zzgz;

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzb(ILcom/google/android/gms/internal/clearcut/zzfz;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_107
    iget-wide v7, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjg:J

    cmp-long v2, v7, v3

    if-eqz v2, :cond_116

    const/16 v2, 0x11

    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjg:J

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzd(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_116
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjw:[B

    sget-object v3, Lcom/google/android/gms/internal/clearcut/zzgb;->zzse:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_129

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjw:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_129
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjz:[I

    if-eqz v2, :cond_14b

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjz:[I

    array-length v2, v2

    if-lez v2, :cond_14b

    const/4 v2, 0x0

    :goto_133
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjz:[I

    array-length v3, v3

    if-ge v6, v3, :cond_144

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjz:[I

    aget v3, v3, v6

    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzs(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_133

    :cond_144
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjz:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    :cond_14b
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkb:Lcom/google/android/gms/internal/clearcut/zzge$zzs;

    if-eqz v2, :cond_158

    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkb:Lcom/google/android/gms/internal/clearcut/zzge$zzs;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzc(ILcom/google/android/gms/internal/clearcut/zzdo;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_158
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjx:Ljava/lang/String;

    if-eqz v2, :cond_16f

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjx:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16f

    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjx:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzb(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_16f
    iget-boolean v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbkc:Z

    if-eqz v2, :cond_17b

    const/16 v2, 0x19

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzr(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_17b
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjj:Ljava/lang/String;

    if-eqz v1, :cond_192

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjj:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_192

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->zzbjj:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_192
    return v0
.end method

.method public final synthetic zzeo()Lcom/google/android/gms/internal/clearcut/zzfu;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzfz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzha;

    return-object v0
.end method

.method public final synthetic zzep()Lcom/google/android/gms/internal/clearcut/zzfz;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzfz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzha;

    return-object v0
.end method
