.class public Landroid/databinding/adapters/TextViewBindingAdapter;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:autoLink"
            method = "setAutoLinkMask"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:drawablePadding"
            method = "setCompoundDrawablePadding"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:editorExtras"
            method = "setInputExtras"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:inputType"
            method = "setRawInputType"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:scrollHorizontally"
            method = "setHorizontallyScrolling"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:textAllCaps"
            method = "setAllCaps"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:textColorHighlight"
            method = "setHighlightColor"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:textColorHint"
            method = "setHintTextColor"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:textColorLink"
            method = "setLinkTextColor"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onEditorAction"
            method = "setOnEditorActionListener"
            type = Landroid/widget/TextView;
        .end subannotation
    }
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;,
        Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;,
        Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;
    }
.end annotation


# static fields
.field public static final DECIMAL:I = 0x5

.field public static final INTEGER:I = 0x1

.field public static final SIGNED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TextViewBindingAdapters"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTextString(Landroid/widget/TextView;)Ljava/lang/String;
    .registers 1
    .annotation build Landroid/databinding/InverseBindingAdapter;
        attribute = "android:text"
        event = "android:textAttrChanged"
    .end annotation

    .line 85
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static haveContentsChanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-nez p1, :cond_b

    const/4 v3, 0x1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_c
    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    if-nez p0, :cond_12

    return v0

    .line 338
    :cond_12
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 339
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_1d

    return v1

    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_2e

    .line 343
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2b

    return v1

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_2e
    return v0
.end method

.method public static setAutoText(Landroid/widget/TextView;Z)V
    .registers 5
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:autoText"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    .line 92
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    if-eqz v0, :cond_d

    .line 94
    invoke-interface {v0}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_15

    .line 96
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_22

    :cond_15
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_1c

    .line 98
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_22

    :cond_1c
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_22

    .line 100
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 102
    :cond_22
    :goto_22
    invoke-static {p1, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method public static setBufferType(Landroid/widget/TextView;Landroid/widget/TextView$BufferType;)V
    .registers 3
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:bufferType"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public static setCapitalize(Landroid/widget/TextView;Landroid/text/method/TextKeyListener$Capitalize;)V
    .registers 4
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:capitalize"
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 111
    :goto_11
    invoke-static {v0, p1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method public static setDigits(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 2
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:digits"
        }
    .end annotation

    if-eqz p1, :cond_e

    .line 122
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_1a

    .line 123
    :cond_e
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p1

    instance-of p1, p1, Landroid/text/method/DigitsKeyListener;

    if-eqz p1, :cond_1a

    const/4 p1, 0x0

    .line 124
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public static setDrawableBottom(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:drawableBottom"
        }
    .end annotation

    .line 151
    invoke-static {p1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    .line 152
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 153
    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {p0, v1, v2, v0, p1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setDrawableEnd(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:drawableEnd"
        }
    .end annotation

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_a

    .line 193
    invoke-static {p0, p1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setDrawableRight(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    .line 195
    :cond_a
    invoke-static {p1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    .line 196
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 197
    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1d
    return-void
.end method

.method public static setDrawableLeft(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:drawableLeft"
        }
    .end annotation

    .line 158
    invoke-static {p1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    .line 160
    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setDrawableRight(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:drawableRight"
        }
    .end annotation

    .line 165
    invoke-static {p1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    .line 166
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 167
    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setDrawableStart(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:drawableStart"
        }
    .end annotation

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_a

    .line 182
    invoke-static {p0, p1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setDrawableLeft(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    .line 184
    :cond_a
    invoke-static {p1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    .line 185
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    .line 186
    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1d
    return-void
.end method

.method public static setDrawableTop(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:drawableTop"
        }
    .end annotation

    .line 173
    invoke-static {p1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    .line 174
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 175
    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setImeActionLabel(Landroid/widget/TextView;I)V
    .registers 3
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:imeActionId"
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Landroid/widget/TextView;->getImeActionLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static setImeActionLabel(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 3
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:imeActionLabel"
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Landroid/widget/TextView;->getImeActionId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static setInputMethod(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 5
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:inputMethod"
        }
    .end annotation

    .line 215
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/method/KeyListener;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_11} :catch_42
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_11} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_59

    :catch_12
    move-exception p0

    const-string v0, "TextViewBindingAdapters"

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create input method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59

    :catch_2a
    move-exception p0

    const-string v0, "TextViewBindingAdapters"

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create input method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59

    :catch_42
    move-exception p0

    const-string v0, "TextViewBindingAdapters"

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create input method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_59
    return-void
.end method

.method private static setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p0, :cond_e

    .line 145
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_e
    return-void
.end method

.method public static setLineSpacingExtra(Landroid/widget/TextView;F)V
    .registers 4
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:lineSpacingExtra"
        }
    .end annotation

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 229
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_13

    :cond_e
    const/high16 v0, 0x3f800000    # 1.0f

    .line 231
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :goto_13
    return-void
.end method

.method public static setLineSpacingMultiplier(Landroid/widget/TextView;F)V
    .registers 4
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:lineSpacingMultiplier"
        }
    .end annotation

    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 238
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_12

    :cond_e
    const/4 v0, 0x0

    .line 240
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :goto_12
    return-void
.end method

.method public static setMaxLength(Landroid/widget/TextView;I)V
    .registers 9
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:maxLength"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    .line 248
    new-array v0, v2, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    goto :goto_51

    :cond_12
    const/4 v3, 0x0

    .line 253
    :goto_13
    array-length v4, v0

    if-ge v3, v4, :cond_3c

    .line 254
    aget-object v4, v0, v3

    .line 255
    instance-of v5, v4, Landroid/text/InputFilter$LengthFilter;

    if-eqz v5, :cond_39

    .line 258
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_2d

    .line 259
    check-cast v4, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v4}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v4

    if-eq v4, p1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v4, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v4, 0x1

    :goto_2e
    if-eqz v4, :cond_37

    .line 262
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v0, v3

    :cond_37
    const/4 v3, 0x1

    goto :goto_3d

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_3c
    const/4 v3, 0x0

    :goto_3d
    if-nez v3, :cond_51

    .line 270
    array-length v3, v0

    add-int/2addr v3, v2

    new-array v3, v3, [Landroid/text/InputFilter;

    .line 271
    array-length v4, v0

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    array-length v0, v3

    sub-int/2addr v0, v2

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v3, v0

    move-object v0, v3

    .line 275
    :cond_51
    :goto_51
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public static setNumeric(Landroid/widget/TextView;I)V
    .registers 5
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:numeric"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    and-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_e

    const/4 v1, 0x1

    .line 130
    :cond_e
    invoke-static {v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method public static setPassword(Landroid/widget/TextView;Z)V
    .registers 2
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:password"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 281
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_16

    .line 282
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    instance-of p1, p1, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p1, :cond_16

    const/4 p1, 0x0

    .line 283
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public static setPhoneNumber(Landroid/widget/TextView;Z)V
    .registers 2
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:phoneNumber"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 137
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_16

    .line 138
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p1

    instance-of p1, p1, Landroid/text/method/DialerKeyListener;

    if-eqz p1, :cond_16

    const/4 p1, 0x0

    .line 139
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public static setShadowColor(Landroid/widget/TextView;I)V
    .registers 5
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:shadowColor"
        }
    .end annotation

    .line 289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_15

    .line 290
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v0

    .line 291
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v1

    .line 292
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    .line 293
    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_15
    return-void
.end method

.method public static setShadowDx(Landroid/widget/TextView;F)V
    .registers 5
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:shadowDx"
        }
    .end annotation

    .line 299
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_15

    .line 300
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowColor()I

    move-result v0

    .line 301
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v1

    .line 302
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    .line 303
    invoke-virtual {p0, v2, p1, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_15
    return-void
.end method

.method public static setShadowDy(Landroid/widget/TextView;F)V
    .registers 5
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:shadowDy"
        }
    .end annotation

    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_15

    .line 310
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowColor()I

    move-result v0

    .line 311
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    .line 312
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    .line 313
    invoke-virtual {p0, v2, v1, p1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_15
    return-void
.end method

.method public static setShadowRadius(Landroid/widget/TextView;F)V
    .registers 5
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:shadowRadius"
        }
    .end annotation

    .line 319
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_15

    .line 320
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowColor()I

    move-result v0

    .line 321
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    .line 322
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v2

    .line 323
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_15
    return-void
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 4
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:text"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq p1, v0, :cond_25

    if-nez p1, :cond_f

    .line 70
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_25

    .line 73
    :cond_f
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_1a

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    return-void

    .line 77
    :cond_1a
    invoke-static {p1, v0}, Landroid/databinding/adapters/TextViewBindingAdapter;->haveContentsChanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    .line 80
    :cond_21
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_25
    :goto_25
    return-void
.end method

.method public static setTextSize(Landroid/widget/TextView;F)V
    .registers 3
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:textSize"
        }
    .end annotation

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static setTextWatcher(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroid/databinding/InverseBindingListener;)V
    .registers 6
    .annotation build Landroid/databinding/BindingAdapter;
        requireAll = false
        value = {
            "android:beforeTextChanged",
            "android:onTextChanged",
            "android:afterTextChanged",
            "android:textAttrChanged"
        }
    .end annotation

    if-nez p1, :cond_a

    if-nez p3, :cond_a

    if-nez p2, :cond_a

    if-nez p4, :cond_a

    const/4 p1, 0x0

    goto :goto_10

    .line 359
    :cond_a
    new-instance v0, Landroid/databinding/adapters/TextViewBindingAdapter$1;

    invoke-direct {v0, p1, p2, p4, p3}, Landroid/databinding/adapters/TextViewBindingAdapter$1;-><init>(Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/InverseBindingListener;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V

    move-object p1, v0

    .line 385
    :goto_10
    sget p2, Lcom/android/databinding/library/baseAdapters/R$id;->textWatcher:I

    invoke-static {p0, p1, p2}, Landroid/databinding/adapters/ListenerUtil;->trackListener(Landroid/view/View;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/text/TextWatcher;

    if-eqz p2, :cond_1d

    .line 387
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1d
    if-eqz p1, :cond_22

    .line 390
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_22
    return-void
.end method
