.class final Lcom/google/android/gms/internal/clearcut/zzed;
.super Ljava/lang/Object;


# instance fields
.field private final flags:I

.field private final zzmj:[Ljava/lang/Object;

.field private final zzmk:I

.field private final zzml:I

.field private final zzmm:I

.field private final zzms:[I

.field private final zznh:Lcom/google/android/gms/internal/clearcut/zzee;

.field private zzni:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final zznj:I

.field private final zznk:I

.field private final zznl:I

.field private final zznm:I

.field private final zznn:I

.field private final zzno:I

.field private zznp:I

.field private zznq:I

.field private zznr:I

.field private zzns:I

.field private zznt:I

.field private zznu:I

.field private zznv:I

.field private zznw:I

.field private zznx:I

.field private zzny:I

.field private zznz:I

.field private zzoa:I

.field private zzob:I

.field private zzoc:I

.field private zzod:Ljava/lang/reflect/Field;

.field private zzoe:Ljava/lang/Object;

.field private zzof:Ljava/lang/Object;

.field private zzog:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznr:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzns:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznt:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznu:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznv:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznw:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznx:I

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzni:Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/clearcut/zzee;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/clearcut/zzee;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznh:Lcom/google/android/gms/internal/clearcut/zzee;

    iput-object p3, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzmj:[Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznh:Lcom/google/android/gms/internal/clearcut/zzee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzee;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->flags:I

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznh:Lcom/google/android/gms/internal/clearcut/zzee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzee;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznj:I

    iget p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznj:I

    const/4 p2, 0x0

    if-nez p1, :cond_4a

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznk:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznl:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzmk:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzml:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznm:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznn:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzmm:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzno:I

    iput-object p2, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzms:[I

    return-void

    :cond_4a
    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznh:Lcom/google/android/gms/internal/clearcut/zzee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzee;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznk:I

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznh:Lcom/google/android/gms/internal/clearcut/zzee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzee;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznl:I

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznh:Lcom/google/android/gms/internal/clearcut/zzee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzee;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzmk:I

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznh:Lcom/google/android/gms/internal/clearcut/zzee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzee;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzml:I

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznh:Lcom/google/android/gms/internal/clearcut/zzee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzee;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznn:I

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznh:Lcom/google/android/gms/internal/clearcut/zzee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzee;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzmm:I

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznh:Lcom/google/android/gms/internal/clearcut/zzee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzee;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznm:I

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznh:Lcom/google/android/gms/internal/clearcut/zzee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzee;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzno:I

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznh:Lcom/google/android/gms/internal/clearcut/zzee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzee;->next()I

    move-result p1

    if-nez p1, :cond_93

    goto :goto_95

    :cond_93
    new-array p2, p1, [I

    :goto_95
    iput-object p2, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzms:[I

    iget p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznk:I

    shl-int/lit8 p1, p1, 0x1

    iget p2, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznl:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznp:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/clearcut/zzed;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->flags:I

    return p0
.end method

.method private static zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/clearcut/zzed;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzmk:I

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/clearcut/zzed;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzml:I

    return p0
.end method

.method private final zzcw()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzmj:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznp:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private final zzcz()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/clearcut/zzed;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznj:I

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/clearcut/zzed;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznm:I

    return p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/clearcut/zzed;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzno:I

    return p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/clearcut/zzed;)[I
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzms:[I

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/clearcut/zzed;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznn:I

    return p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/clearcut/zzed;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzmm:I

    return p0
.end method


# virtual methods
.method final next()Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznh:Lcom/google/android/gms/internal/clearcut/zzee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzee;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznh:Lcom/google/android/gms/internal/clearcut/zzee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzee;->next()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzny:I

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznh:Lcom/google/android/gms/internal/clearcut/zzee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzee;->next()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznz:I

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznz:I

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzny:I

    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznr:I

    if-ge v0, v2, :cond_2a

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzny:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznr:I

    :cond_2a
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzny:I

    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzns:I

    if-le v0, v2, :cond_34

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzny:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzns:I

    :cond_34
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzcb;->zziw:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_45

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznt:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznt:I

    goto :goto_5e

    :cond_45
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzcb;->zzhq:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v2

    if-lt v0, v2, :cond_5e

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzcb;->zziv:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v2

    if-gt v0, v2, :cond_5e

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznu:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznu:I

    :cond_5e
    :goto_5e
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznx:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznx:I

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznr:I

    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzny:I

    iget v4, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznx:I

    invoke-static {v0, v2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzc(III)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzny:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznw:I

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznw:I

    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznr:I

    sub-int/2addr v0, v2

    :goto_79
    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznv:I

    goto :goto_80

    :cond_7c
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznv:I

    add-int/2addr v0, v3

    goto :goto_79

    :goto_80
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznz:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_88

    const/4 v0, 0x1

    goto :goto_89

    :cond_88
    const/4 v0, 0x0

    :goto_89
    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzms:[I

    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznq:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznq:I

    iget v4, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzny:I

    aput v4, v0, v2

    :cond_97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoe:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzof:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzog:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzed;->zzda()Z

    move-result v0

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznh:Lcom/google/android/gms/internal/clearcut/zzee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzee;->next()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzob:I

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzcb;->zzhh:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    if-eq v0, v1, :cond_de

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzcb;->zzhp:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    if-ne v0, v1, :cond_c5

    goto :goto_de

    :cond_c5
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzcb;->zzhk:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    if-ne v0, v1, :cond_175

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzed;->zzcz()Z

    move-result v0

    if-eqz v0, :cond_175

    :goto_d7
    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzed;->zzcw()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzof:Ljava/lang/Object;

    return v3

    :cond_de
    :goto_de
    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzed;->zzcw()Ljava/lang/Object;

    move-result-object v0

    :goto_e2
    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoe:Ljava/lang/Object;

    return v3

    :cond_e5
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzni:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzed;->zzcw()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/clearcut/zzed;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzod:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzed;->zzde()Z

    move-result v0

    if-eqz v0, :cond_101

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznh:Lcom/google/android/gms/internal/clearcut/zzee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzee;->next()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoc:I

    :cond_101
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzcb;->zzhh:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v2

    if-eq v0, v2, :cond_16d

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzcb;->zzhp:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v2

    if-ne v0, v2, :cond_116

    goto :goto_16d

    :cond_116
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzcb;->zzhz:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v2

    if-eq v0, v2, :cond_de

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzcb;->zziv:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v2

    if-ne v0, v2, :cond_12b

    goto :goto_de

    :cond_12b
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzcb;->zzhk:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v2

    if-eq v0, v2, :cond_165

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzcb;->zzic:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v2

    if-eq v0, v2, :cond_165

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzcb;->zziq:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v2

    if-ne v0, v2, :cond_14a

    goto :goto_165

    :cond_14a
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzcb;->zziw:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v2

    if-ne v0, v2, :cond_175

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzed;->zzcw()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzog:Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznz:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_161

    const/4 v1, 0x1

    :cond_161
    if-eqz v1, :cond_175

    goto/16 :goto_d7

    :cond_165
    :goto_165
    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzed;->zzcz()Z

    move-result v0

    if-eqz v0, :cond_175

    goto/16 :goto_d7

    :cond_16d
    :goto_16d
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzod:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_e2

    :cond_175
    return v3
.end method

.method final zzcx()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzny:I

    return v0
.end method

.method final zzcy()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    return v0
.end method

.method final zzda()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzcb;->zziw:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method final zzdb()Ljava/lang/reflect/Field;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzob:I

    shl-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzmj:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v2, v1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_f

    check-cast v1, Ljava/lang/reflect/Field;

    return-object v1

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzni:Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzmj:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v1
.end method

.method final zzdc()Ljava/lang/reflect/Field;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzob:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzmj:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v2, v1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_11

    check-cast v1, Ljava/lang/reflect/Field;

    return-object v1

    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzni:Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzmj:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v1
.end method

.method final zzdd()Ljava/lang/reflect/Field;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzod:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method final zzde()Z
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzed;->zzcz()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoa:I

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzcb;->zzhp:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v1

    if-gt v0, v1, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method final zzdf()Ljava/lang/reflect/Field;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznk:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoc:I

    div-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzmj:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v2, v1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_14

    check-cast v1, Ljava/lang/reflect/Field;

    return-object v1

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzni:Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzmj:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v1
.end method

.method final zzdg()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoc:I

    rem-int/lit8 v0, v0, 0x20

    return v0
.end method

.method final zzdh()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznz:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method final zzdi()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zznz:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method final zzdj()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzoe:Ljava/lang/Object;

    return-object v0
.end method

.method final zzdk()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzof:Ljava/lang/Object;

    return-object v0
.end method

.method final zzdl()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzed;->zzog:Ljava/lang/Object;

    return-object v0
.end method
