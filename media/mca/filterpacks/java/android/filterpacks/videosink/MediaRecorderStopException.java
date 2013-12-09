/*
 * Copyright (C) 2011 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


package android.filterpacks.videosink;

import java.lang.RuntimeException;
import android.util.Log;

/** @hide **/
public class MediaRecorderStopException extends RuntimeException {

    private static final String TAG = "MediaRecorderStopException";

    public MediaRecorderStopException(String msg) {
        super(msg);
    }

    public MediaRecorderStopException() {
        super();
    }

    public MediaRecorderStopException(String msg, Throwable t) {
        super(msg, t);
    }

    public MediaRecorderStopException(Throwable t) {
        super(t);
    }
}

