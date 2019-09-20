.class final Lcom/google/android/libraries/places/internal/dk;
.super Lcom/google/android/libraries/places/internal/dn;
.source "PG"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lcom/google/android/libraries/places/internal/dn$b;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/dn$b;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/dn;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dk;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/android/libraries/places/internal/dk;->b:I

    .line 4
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/dk;->c:Lcom/google/android/libraries/places/internal/dn$b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/dk;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .registers 2

    .line 7
    iget v0, p0, Lcom/google/android/libraries/places/internal/dk;->b:I

    return v0
.end method

.method public final c()Lcom/google/android/libraries/places/internal/dn$b;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/dk;->c:Lcom/google/android/libraries/places/internal/dn$b;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 12
    :cond_4
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/dn;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 13
    check-cast p1, Lcom/google/android/libraries/places/internal/dn;

    .line 14
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dk;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/dn;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget v1, p0, Lcom/google/android/libraries/places/internal/dk;->b:I

    .line 15
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/dn;->b()I

    move-result v3

    if-ne v1, v3, :cond_2c

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dk;->c:Lcom/google/android/libraries/places/internal/dn$b;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/dn;->c()Lcom/google/android/libraries/places/internal/dn$b;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/dn$b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    return v0

    :cond_2c
    return v2

    :cond_2d
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 19
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/dk;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 21
    iget v2, p0, Lcom/google/android/libraries/places/internal/dk;->b:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 23
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dk;->c:Lcom/google/android/libraries/places/internal/dn$b;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/dn$b;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/dk;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/libraries/places/internal/dk;->b:I

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/dk;->c:Lcom/google/android/libraries/places/internal/dn$b;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x44

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ClientProfile{packageName="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", versionCode="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", requestSource="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
