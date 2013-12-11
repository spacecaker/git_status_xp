/*
 * Copyright (C) 2009 The Android Open Source Project
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

package android.webkit;

import java.io.InputStream;
import java.util.Map;

/**
 * This class encapsulates the content generated by a plugin.  The
 * data itself is meant to be loaded into webkit via the
 * PluginContentLoader class, which needs to be able to construct an
 * HTTP response. For this, it needs a stream with the response body,
 * the length of the body, the response headers, and the response
 * status code. The PluginData class is the container for all these
 * parts.
 *
 * @hide
 * @deprecated This class was intended to be used by Gears. Since Gears was
 * deprecated, so is this class.
 */
@Deprecated
public final class PluginData {
    /**
     * The content stream.
     */
    private InputStream mStream;
    /**
     * The content length.
     */
    private long mContentLength;
    /**
     * The associated HTTP response headers stored as a map of
     * lowercase header name to [ unmodified header name, header value].
     * TODO: This design was always a hack. Remove (involves updating
     * the Gears C++ side).
     */
    private Map<String, String[]> mHeaders;

    /**
     * The associated HTTP response code.
     */
    private int mStatusCode;

    /**
     * Creates a PluginData instance.
     *
     * @param stream The stream that supplies content for the plugin.
     * @param length The length of the plugin content.
     * @param headers The response headers. Map of
     * lowercase header name to [ unmodified header name, header value]
     * @param length The HTTP response status code.
     *
     * @hide
     * @deprecated This class was intended to be used by Gears. Since Gears was
     * deprecated, so is this class.
     */
    @Deprecated
    public PluginData(
            InputStream stream,
            long length,
            Map<String, String[]> headers,
            int code) {
        mStream = stream;
        mContentLength = length;
        mHeaders = headers;
        mStatusCode = code;
    }

    /**
     * Returns the input stream that contains the plugin content.
     *
     * @return An InputStream instance with the plugin content.
     *
     * @hide
     * @deprecated This class was intended to be used by Gears. Since Gears was
     * deprecated, so is this class.
     */
    @Deprecated
    public InputStream getInputStream() {
        return mStream;
    }

    /**
     * Returns the length of the plugin content.
     *
     * @return the length of the plugin content.
     *
     * @hide
     * @deprecated This class was intended to be used by Gears. Since Gears was
     * deprecated, so is this class.
     */
    @Deprecated
    public long getContentLength() {
        return mContentLength;
    }

    /**
     * Returns the HTTP response headers associated with the plugin
     * content.
     *
     * @return A Map<String, String[]> containing all headers. The
     * mapping is 'lowercase header name' to ['unmodified header
     * name', header value].
     *
     * @hide
     * @deprecated This class was intended to be used by Gears. Since Gears was
     * deprecated, so is this class.
     */
    @Deprecated
    public Map<String, String[]> getHeaders() {
        return mHeaders;
    }

    /**
     * Returns the HTTP status code for the response.
     *
     * @return The HTTP statue code, e.g 200.
     *
     * @hide
     * @deprecated This class was intended to be used by Gears. Since Gears was
     * deprecated, so is this class.
     */
    @Deprecated
    public int getStatusCode() {
        return mStatusCode;
    }
}
