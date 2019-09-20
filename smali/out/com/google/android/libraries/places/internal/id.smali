.class final Lcom/google/android/libraries/places/internal/id;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lcom/google/android/libraries/places/internal/ie<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Lcom/google/android/libraries/places/internal/id;


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/kg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/kg<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 274
    new-instance v0, Lcom/google/android/libraries/places/internal/id;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/id;-><init>(B)V

    sput-object v0, Lcom/google/android/libraries/places/internal/id;->d:Lcom/google/android/libraries/places/internal/id;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/id;->c:Z

    const/16 v0, 0x10

    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/kg;->a(I)Lcom/google/android/libraries/places/internal/kg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    return-void
.end method

.method private constructor <init>(B)V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/id;->c:Z

    .line 7
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kg;->a(I)Lcom/google/android/libraries/places/internal/kg;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/id;->a()V

    return-void
.end method

.method static a(Lcom/google/android/libraries/places/internal/lf;ILjava/lang/Object;)I
    .registers 4

    .line 208
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p1

    .line 209
    sget-object v0, Lcom/google/android/libraries/places/internal/lf;->j:Lcom/google/android/libraries/places/internal/lf;

    if-ne p0, v0, :cond_13

    .line 210
    move-object v0, p2

    check-cast v0, Lcom/google/android/libraries/places/internal/jo;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/il;->a(Lcom/google/android/libraries/places/internal/jo;)Z

    move-result v0

    if-nez v0, :cond_13

    shl-int/lit8 p1, p1, 0x1

    .line 212
    :cond_13
    invoke-static {p0, p2}, Lcom/google/android/libraries/places/internal/id;->b(Lcom/google/android/libraries/places/internal/lf;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 93
    instance-of v0, p0, Lcom/google/android/libraries/places/internal/jt;

    if-eqz v0, :cond_b

    .line 94
    check-cast p0, Lcom/google/android/libraries/places/internal/jt;

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/jt;->a()Lcom/google/android/libraries/places/internal/jt;

    move-result-object p0

    return-object p0

    .line 95
    :cond_b
    instance-of v0, p0, [B

    if-eqz v0, :cond_1a

    .line 96
    check-cast p0, [B

    .line 97
    array-length v0, p0

    new-array v0, v0, [B

    .line 98
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1a
    return-object p0
.end method

.method static a(Lcom/google/android/libraries/places/internal/hy;Lcom/google/android/libraries/places/internal/lf;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/google/android/libraries/places/internal/lf;->j:Lcom/google/android/libraries/places/internal/lf;

    if-ne p1, v0, :cond_1f

    .line 128
    check-cast p3, Lcom/google/android/libraries/places/internal/jo;

    invoke-static {p3}, Lcom/google/android/libraries/places/internal/il;->a(Lcom/google/android/libraries/places/internal/jo;)Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_14

    .line 129
    invoke-virtual {p0, p2, v0}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    .line 131
    invoke-interface {p3, p0}, Lcom/google/android/libraries/places/internal/jo;->a(Lcom/google/android/libraries/places/internal/hy;)V

    return-void

    .line 134
    :cond_14
    invoke-virtual {p0, p2, v0}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    .line 136
    invoke-interface {p3, p0}, Lcom/google/android/libraries/places/internal/jo;->a(Lcom/google/android/libraries/places/internal/hy;)V

    const/4 p1, 0x4

    .line 137
    invoke-virtual {p0, p2, p1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    return-void

    .line 141
    :cond_1f
    iget v0, p1, Lcom/google/android/libraries/places/internal/lf;->t:I

    .line 142
    invoke-virtual {p0, p2, v0}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    .line 144
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/lf;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_f8

    goto/16 :goto_f6

    .line 186
    :pswitch_2d
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->b(J)V

    return-void

    .line 184
    :pswitch_37
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->c(I)V

    return-void

    .line 181
    :pswitch_41
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->c(J)V

    return-void

    .line 178
    :pswitch_4b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 179
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->d(I)V

    return-void

    .line 188
    :pswitch_55
    instance-of p1, p3, Lcom/google/android/libraries/places/internal/im;

    if-eqz p1, :cond_63

    .line 189
    check-cast p3, Lcom/google/android/libraries/places/internal/im;

    invoke-interface {p3}, Lcom/google/android/libraries/places/internal/im;->a()I

    move-result p1

    .line 190
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->a(I)V

    return-void

    .line 192
    :cond_63
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 193
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->a(I)V

    goto/16 :goto_f6

    .line 176
    :pswitch_6e
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    return-void

    .line 171
    :pswitch_78
    instance-of p1, p3, Lcom/google/android/libraries/places/internal/hq;

    if-eqz p1, :cond_82

    .line 172
    check-cast p3, Lcom/google/android/libraries/places/internal/hq;

    invoke-virtual {p0, p3}, Lcom/google/android/libraries/places/internal/hy;->a(Lcom/google/android/libraries/places/internal/hq;)V

    return-void

    .line 173
    :cond_82
    check-cast p3, [B

    const/4 p1, 0x0

    .line 174
    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->b([BII)V

    return-void

    .line 165
    :pswitch_8a
    check-cast p3, Lcom/google/android/libraries/places/internal/jo;

    invoke-virtual {p0, p3}, Lcom/google/android/libraries/places/internal/hy;->a(Lcom/google/android/libraries/places/internal/jo;)V

    return-void

    .line 162
    :pswitch_90
    check-cast p3, Lcom/google/android/libraries/places/internal/jo;

    .line 163
    invoke-interface {p3, p0}, Lcom/google/android/libraries/places/internal/jo;->a(Lcom/google/android/libraries/places/internal/hy;)V

    return-void

    .line 167
    :pswitch_96
    instance-of p1, p3, Lcom/google/android/libraries/places/internal/hq;

    if-eqz p1, :cond_a0

    .line 168
    check-cast p3, Lcom/google/android/libraries/places/internal/hq;

    invoke-virtual {p0, p3}, Lcom/google/android/libraries/places/internal/hy;->a(Lcom/google/android/libraries/places/internal/hq;)V

    return-void

    .line 169
    :cond_a0
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/libraries/places/internal/hy;->a(Ljava/lang/String;)V

    return-void

    .line 160
    :pswitch_a6
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->a(Z)V

    return-void

    .line 158
    :pswitch_b0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->d(I)V

    return-void

    .line 156
    :pswitch_ba
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->c(J)V

    return-void

    .line 154
    :pswitch_c4
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->a(I)V

    return-void

    .line 152
    :pswitch_ce
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->a(J)V

    return-void

    .line 149
    :pswitch_d8
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->a(J)V

    return-void

    .line 147
    :pswitch_e2
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->a(F)V

    return-void

    .line 145
    :pswitch_ec
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->a(D)V

    return-void

    :goto_f6
    return-void

    nop

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_ec
        :pswitch_e2
        :pswitch_d8
        :pswitch_ce
        :pswitch_c4
        :pswitch_ba
        :pswitch_b0
        :pswitch_a6
        :pswitch_96
        :pswitch_90
        :pswitch_8a
        :pswitch_78
        :pswitch_6e
        :pswitch_55
        :pswitch_4b
        :pswitch_41
        :pswitch_37
        :pswitch_2d
    .end packed-switch
.end method

.method static a(Lcom/google/android/libraries/places/internal/lf;Ljava/lang/Object;)V
    .registers 4

    .line 44
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/il;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/lf;->s:Lcom/google/android/libraries/places/internal/lg;

    .line 48
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/lg;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_48

    goto :goto_3d

    .line 65
    :pswitch_f
    instance-of p0, p1, Lcom/google/android/libraries/places/internal/jo;

    if-nez p0, :cond_20

    instance-of p0, p1, Lcom/google/android/libraries/places/internal/iu;

    if-eqz p0, :cond_3d

    goto :goto_20

    .line 63
    :pswitch_18
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_20

    instance-of p0, p1, Lcom/google/android/libraries/places/internal/im;

    if-eqz p0, :cond_3d

    :cond_20
    :goto_20
    const/4 v1, 0x1

    goto :goto_3d

    .line 61
    :pswitch_22
    instance-of p0, p1, Lcom/google/android/libraries/places/internal/hq;

    if-nez p0, :cond_20

    instance-of p0, p1, [B

    if-eqz p0, :cond_3d

    goto :goto_20

    .line 59
    :pswitch_2b
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_3c

    .line 57
    :pswitch_2e
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_3c

    .line 55
    :pswitch_31
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_3c

    .line 53
    :pswitch_34
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_3c

    .line 51
    :pswitch_37
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_3c

    .line 49
    :pswitch_3a
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_3c
    move v1, v0

    :cond_3d
    :goto_3d
    if-nez v1, :cond_47

    .line 67
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    return-void

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_22
        :pswitch_18
        :pswitch_f
    .end packed-switch
.end method

.method public static b(Lcom/google/android/libraries/places/internal/ie;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/ie<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 241
    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/ie;->b()Lcom/google/android/libraries/places/internal/lf;

    move-result-object v0

    .line 242
    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/ie;->a()I

    move-result v1

    .line 243
    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/ie;->d()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 244
    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/ie;->e()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_36

    .line 246
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 247
    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/id;->b(Lcom/google/android/libraries/places/internal/lf;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1b

    .line 250
    :cond_2b
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 251
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/hy;->j(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 254
    :cond_36
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 255
    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/places/internal/id;->a(Lcom/google/android/libraries/places/internal/lf;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_3c

    :cond_4c
    return v2

    .line 258
    :cond_4d
    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/places/internal/id;->a(Lcom/google/android/libraries/places/internal/lf;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static b(Lcom/google/android/libraries/places/internal/lf;Ljava/lang/Object;)I
    .registers 2

    .line 213
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/lf;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_ee

    .line 240
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 233
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->f(J)I

    move-result p0

    return p0

    .line 232
    :pswitch_1a
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->h(I)I

    move-result p0

    return p0

    .line 231
    :pswitch_25
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    invoke-static {}, Lcom/google/android/libraries/places/internal/hy;->d()I

    move-result p0

    return p0

    .line 230
    :pswitch_2f
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    invoke-static {}, Lcom/google/android/libraries/places/internal/hy;->b()I

    move-result p0

    return p0

    .line 237
    :pswitch_39
    instance-of p0, p1, Lcom/google/android/libraries/places/internal/im;

    if-eqz p0, :cond_48

    .line 238
    check-cast p1, Lcom/google/android/libraries/places/internal/im;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/im;->a()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->i(I)I

    move-result p0

    return p0

    .line 239
    :cond_48
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->i(I)I

    move-result p0

    return p0

    .line 229
    :pswitch_53
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result p0

    return p0

    .line 223
    :pswitch_5e
    instance-of p0, p1, Lcom/google/android/libraries/places/internal/hq;

    if-eqz p0, :cond_69

    .line 224
    check-cast p1, Lcom/google/android/libraries/places/internal/hq;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->b(Lcom/google/android/libraries/places/internal/hq;)I

    move-result p0

    return p0

    .line 225
    :cond_69
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->b([B)I

    move-result p0

    return p0

    .line 234
    :pswitch_70
    instance-of p0, p1, Lcom/google/android/libraries/places/internal/iu;

    if-eqz p0, :cond_7b

    .line 235
    check-cast p1, Lcom/google/android/libraries/places/internal/iu;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->a(Lcom/google/android/libraries/places/internal/ix;)I

    move-result p0

    return p0

    .line 236
    :cond_7b
    check-cast p1, Lcom/google/android/libraries/places/internal/jo;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->b(Lcom/google/android/libraries/places/internal/jo;)I

    move-result p0

    return p0

    .line 222
    :pswitch_82
    check-cast p1, Lcom/google/android/libraries/places/internal/jo;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->c(Lcom/google/android/libraries/places/internal/jo;)I

    move-result p0

    return p0

    .line 226
    :pswitch_89
    instance-of p0, p1, Lcom/google/android/libraries/places/internal/hq;

    if-eqz p0, :cond_94

    .line 227
    check-cast p1, Lcom/google/android/libraries/places/internal/hq;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->b(Lcom/google/android/libraries/places/internal/hq;)I

    move-result p0

    return p0

    .line 228
    :cond_94
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->b(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 221
    :pswitch_9b
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {}, Lcom/google/android/libraries/places/internal/hy;->g()I

    move-result p0

    return p0

    .line 220
    :pswitch_a5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    invoke-static {}, Lcom/google/android/libraries/places/internal/hy;->a()I

    move-result p0

    return p0

    .line 219
    :pswitch_af
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    invoke-static {}, Lcom/google/android/libraries/places/internal/hy;->c()I

    move-result p0

    return p0

    .line 218
    :pswitch_b9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->f(I)I

    move-result p0

    return p0

    .line 217
    :pswitch_c4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->e(J)I

    move-result p0

    return p0

    .line 216
    :pswitch_cf
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->d(J)I

    move-result p0

    return p0

    .line 215
    :pswitch_da
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    invoke-static {}, Lcom/google/android/libraries/places/internal/hy;->e()I

    move-result p0

    return p0

    .line 214
    :pswitch_e4
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    invoke-static {}, Lcom/google/android/libraries/places/internal/hy;->f()I

    move-result p0

    return p0

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_da
        :pswitch_cf
        :pswitch_c4
        :pswitch_b9
        :pswitch_af
        :pswitch_a5
        :pswitch_9b
        :pswitch_89
        :pswitch_82
        :pswitch_70
        :pswitch_5e
        :pswitch_53
        :pswitch_39
        :pswitch_2f
        :pswitch_25
        :pswitch_1a
        :pswitch_f
    .end packed-switch
.end method

.method static b(Ljava/util/Map$Entry;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 195
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/ie;

    .line 196
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 197
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ie;->c()Lcom/google/android/libraries/places/internal/lg;

    move-result-object v2

    sget-object v3, Lcom/google/android/libraries/places/internal/lg;->i:Lcom/google/android/libraries/places/internal/lg;

    if-ne v2, v3, :cond_44

    .line 198
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ie;->d()Z

    move-result v2

    if-nez v2, :cond_44

    .line 199
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ie;->e()Z

    move-result v2

    if-nez v2, :cond_44

    .line 200
    instance-of v0, v1, Lcom/google/android/libraries/places/internal/iu;

    if-eqz v0, :cond_33

    .line 202
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/ie;

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/ie;->a()I

    move-result p0

    check-cast v1, Lcom/google/android/libraries/places/internal/iu;

    .line 203
    invoke-static {p0, v1}, Lcom/google/android/libraries/places/internal/hy;->b(ILcom/google/android/libraries/places/internal/ix;)I

    move-result p0

    return p0

    .line 205
    :cond_33
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/ie;

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/ie;->a()I

    move-result p0

    check-cast v1, Lcom/google/android/libraries/places/internal/jo;

    .line 206
    invoke-static {p0, v1}, Lcom/google/android/libraries/places/internal/hy;->b(ILcom/google/android/libraries/places/internal/jo;)I

    move-result p0

    return p0

    .line 207
    :cond_44
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/id;->b(Lcom/google/android/libraries/places/internal/ie;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static c(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 78
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/ie;

    .line 79
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ie;->c()Lcom/google/android/libraries/places/internal/lg;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/lg;->i:Lcom/google/android/libraries/places/internal/lg;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_51

    .line 80
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ie;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 81
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/jo;

    .line 82
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/jo;->g()Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    .line 85
    :cond_33
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 86
    instance-of v0, p0, Lcom/google/android/libraries/places/internal/jo;

    if-eqz v0, :cond_44

    .line 87
    check-cast p0, Lcom/google/android/libraries/places/internal/jo;

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/jo;->g()Z

    move-result p0

    if-nez p0, :cond_51

    return v1

    .line 89
    :cond_44
    instance-of p0, p0, Lcom/google/android/libraries/places/internal/iu;

    if-eqz p0, :cond_49

    return v3

    .line 91
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_51
    return v3
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/places/internal/ie;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/kg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 26
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/iu;

    if-eqz v0, :cond_f

    .line 27
    invoke-static {}, Lcom/google/android/libraries/places/internal/iu;->a()Lcom/google/android/libraries/places/internal/jo;

    move-result-object p1

    return-object p1

    :cond_f
    return-object p1
.end method

.method public final a()V
    .registers 2

    .line 10
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/id;->b:Z

    if-eqz v0, :cond_5

    return-void

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kg;->a()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/id;->b:Z

    return-void
.end method

.method public final a(Lcom/google/android/libraries/places/internal/ie;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/ie;->d()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 30
    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_12

    .line 31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    move-object p2, v0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v1, :cond_34

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 35
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/ie;->b()Lcom/google/android/libraries/places/internal/lf;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/libraries/places/internal/id;->a(Lcom/google/android/libraries/places/internal/lf;Ljava/lang/Object;)V

    goto :goto_24

    :cond_34
    move-object p2, v0

    goto :goto_3d

    .line 39
    :cond_36
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/ie;->b()Lcom/google/android/libraries/places/internal/lf;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/libraries/places/internal/id;->a(Lcom/google/android/libraries/places/internal/lf;Ljava/lang/Object;)V

    .line 40
    :goto_3d
    instance-of v0, p2, Lcom/google/android/libraries/places/internal/iu;

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/id;->c:Z

    .line 42
    :cond_44
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kg;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final a(Ljava/util/Map$Entry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/ie;

    .line 102
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 103
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/iu;

    if-eqz v1, :cond_12

    .line 104
    invoke-static {}, Lcom/google/android/libraries/places/internal/iu;->a()Lcom/google/android/libraries/places/internal/jo;

    move-result-object p1

    .line 105
    :cond_12
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ie;->d()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/id;->a(Lcom/google/android/libraries/places/internal/ie;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_23

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    :cond_23
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 110
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/id;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 112
    :cond_3e
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/kg;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 113
    :cond_44
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ie;->c()Lcom/google/android/libraries/places/internal/lg;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/lg;->i:Lcom/google/android/libraries/places/internal/lg;

    if-ne v1, v2, :cond_78

    .line 114
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/id;->a(Lcom/google/android/libraries/places/internal/ie;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5c

    .line 116
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/id;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/libraries/places/internal/kg;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    .line 117
    :cond_5c
    instance-of p1, v1, Lcom/google/android/libraries/places/internal/jt;

    if-eqz p1, :cond_65

    .line 119
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ie;->g()Lcom/google/android/libraries/places/internal/jt;

    move-result-object p1

    goto :goto_72

    .line 120
    :cond_65
    check-cast v1, Lcom/google/android/libraries/places/internal/jo;

    .line 121
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/jo;->i()Lcom/google/android/libraries/places/internal/jp;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ie;->f()Lcom/google/android/libraries/places/internal/jp;

    move-result-object p1

    .line 122
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/jp;->d()Lcom/google/android/libraries/places/internal/jo;

    move-result-object p1

    .line 123
    :goto_72
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/libraries/places/internal/kg;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 125
    :cond_78
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/id;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/libraries/places/internal/kg;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_81
    return-void
.end method

.method public final b()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 22
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/id;->c:Z

    if-eqz v0, :cond_14

    .line 23
    new-instance v0, Lcom/google/android/libraries/places/internal/iw;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kg;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/iw;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 24
    :cond_14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kg;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    :goto_2
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/kg;->b()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 70
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/internal/kg;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/id;->c(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 73
    :cond_1a
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kg;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 74
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/id;->c(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_24

    return v0

    :cond_37
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 260
    new-instance v0, Lcom/google/android/libraries/places/internal/id;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/id;-><init>()V

    const/4 v1, 0x0

    .line 262
    :goto_6
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/kg;->b()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 263
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/internal/kg;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 264
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/ie;

    .line 265
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/libraries/places/internal/id;->a(Lcom/google/android/libraries/places/internal/ie;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 267
    :cond_24
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kg;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/ie;

    .line 269
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/libraries/places/internal/id;->a(Lcom/google/android/libraries/places/internal/ie;Ljava/lang/Object;)V

    goto :goto_2e

    .line 271
    :cond_48
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/id;->c:Z

    iput-boolean v1, v0, Lcom/google/android/libraries/places/internal/id;->c:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 17
    :cond_4
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/id;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 19
    :cond_a
    check-cast p1, Lcom/google/android/libraries/places/internal/id;

    .line 20
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/kg;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kg;->hashCode()I

    move-result v0

    return v0
.end method
